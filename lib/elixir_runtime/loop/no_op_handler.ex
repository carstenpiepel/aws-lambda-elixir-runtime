# Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

defmodule ElixirRuntime.Loop.NoOpHandler do
  @moduledoc """
  This module defines the a handler that does nothing.
  """

  @doc """
  The lambda entrypoint is just a public function in a module which accepts
  two maps.
  The returned term will be passed to Poison for Json Encoding.
  """
  @spec do_nothing(Map.t(), Map.t()) :: Term
  def do_nothing(request, context) when is_map(request) and is_map(context) do
    "no handler configured"
  end
end
