defmodule Starsoul.DeployCallbacks do
  import Gatling.Bash

  def after_mix_digest(env) do
    bash("mkdir", ~w[-p priv/static], cd: env.build_dir) # optional: release may complain about this directory not existing
    bash("npm", ~w[install], cd: env.build_dir)
    bash("node_modules/brunch/bin/brunch", ~w[build --production], cd: env.build_dir)
    bash("mix", ~w[phoenix.digest -o public/static], cd: env.build_dir)
    env
  end

end
