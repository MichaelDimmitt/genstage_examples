defmodule GenstageExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :genstage_example,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {GenstageExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      {:gen_stage, "~> 0.14"},
      {:plug_cowboy, "~> 2.0"},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end
