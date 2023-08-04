defmodule AwsLambdaElixirRuntime.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.2.0",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),

      # Docs
      name: "AWS Lambda Elixir Runtime",
      source_url: "https://github.com/aws-samples/aws-lambda-elixir-runtime",
      homepage_url:
        "https://github.com/aws-samples/aws-lambda-elixir-runtime/tree/master/apps/elixir_runtime",
      docs: [
        source_url_pattern:
          "https://github.com/aws-samples/aws-lambda-elixir-runtime/blob/master/apps/elixir_runtime/%{path}#L%{line}",
        main: "readme",
        extras: [
          "README.md",
          "LICENSE.md"
        ]
      ]
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    []
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  #
  # Aliases listed here are available only for this project
  # and cannot be accessed from applications inside the apps/ folder.
  defp aliases do
    [
      # run `mix setup` in all child apps
      setup: ["cmd mix setup"]
    ]
  end
end
