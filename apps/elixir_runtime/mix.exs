# Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

defmodule ElixirRuntime.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_runtime,
      version: "0.2.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.15",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      elixirc_options: [debug_info: Mix.env() == :dev or Mix.env() == :test],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {ElixirRuntime.Application, []},
      extra_applications: [:logger, :runtime_tools, :inets, :ssl]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.4"},
      {:mox, "~> 1.0", only: :test},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false},
      {:castore, "~> 1.0", only: [:dev, :test]}
    ]
  end

  defp elixirc_paths(:test) do
    ["lib", "test/support"]
  end

  defp elixirc_paths(_) do
    ["lib"]
  end

   # Aliases are shortcuts or tasks specific to the current project.
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      test: "test --no-start"
    ]
  end
end
