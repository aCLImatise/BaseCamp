version 1.0

task PlanemoMull {
  input {
    Boolean? cond_a_requirements
    Boolean? recursive
    String? mulled_namespace
    String? mulled_command
    String? cond_a_ensure_channels
    String subdirectories_dot
  }
  command <<<
    planemo mull \
      ~{subdirectories_dot} \
      ~{if (cond_a_requirements) then "--conda_requirements" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(mulled_namespace) then ("--mulled_namespace " +  '"' + mulled_namespace + '"') else ""} \
      ~{if defined(mulled_command) then ("--mulled_command " +  '"' + mulled_command + '"') else ""} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cond_a_requirements: "`` on the target tool(s)."
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