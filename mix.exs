defmodule AwsLambdaElixirRuntime.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.2.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "AWS Lambda Elixir Runtime",
      source_url: "https://github.com/aws-carstenpiepel/aws-lambda-elixir-runtime",
      homepage_url:
        "https://github.com/carstenpiepel/aws-lambda-elixir-runtime/tree/master/apps/elixir_runtime",
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
end
