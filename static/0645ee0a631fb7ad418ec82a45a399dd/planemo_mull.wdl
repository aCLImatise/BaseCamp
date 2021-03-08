version 1.0

task PlanemoMull {
  input {
    Boolean? recursive
    String? mulled_namespace
    String? mulled_command
    String? cond_a_ensure_channels
    String subdirectories_dot
  }
  command <<<
    planemo mull \
      ~{subdirectories_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(mulled_namespace) then ("--mulled_namespace " +  '"' + mulled_namespace + '"') else ""} \
      ~{if defined(mulled_command) then ("--mulled_command " +  '"' + mulled_command + '"') else ""} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    recursive: "Recursively perform command for"
    mulled_namespace: "Build a mulled image with the specified\\nnamespace - defaults to biocontainers.\\nGalaxy currently only recognizes images with\\nthe namespace biocontainers."
    mulled_command: "Mulled action to perform for targets - this\\ndefaults to 'build-and-test'."
    cond_a_ensure_channels: "Ensure conda is configured with specified\\ncomma separated list of channels."
    subdirectories_dot: "--mulled_conda_version TEXT     Install a specific version of Conda before"
  }
  output {
    File out_stdout = stdout()
  }
}