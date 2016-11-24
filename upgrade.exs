defmodule Starsoul.UpgradeCallbacks do
  import Gatling.Bash

  # def after_mix_digest(env) do
  #   bash("npm", ~w[install], cd: env.build_dir)
  #   bash("brunch", ~w[build --production], cd: env.build_dir)
  #   bash("mix", ~w[phoenix.digest -o public/static], cd: env.build_dir)
  #   env
  # end

end
