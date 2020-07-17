version 1.0

task PlanemoMull {
  input {
    Boolean? cond_a_requirements
    Boolean? recursive
    String? mulled_cond_a_version
    String? mulled_namespace
    String? mulled_command
    String? cond_a_ensure_channels
    String tool_path
  }
  command <<<
    planemo mull \
      ~{tool_path} \
      ~{true="--conda_requirements" false="" cond_a_requirements} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(mulled_cond_a_version) then ("--mulled_conda_version " +  '"' + mulled_cond_a_version + '"') else ""} \
      ~{if defined(mulled_namespace) then ("--mulled_namespace " +  '"' + mulled_namespace + '"') else ""} \
      ~{if defined(mulled_command) then ("--mulled_command " +  '"' + mulled_command + '"') else ""} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""}
  >>>
  parameter_meta {
    cond_a_requirements: "`` on the target tool(s)."
    recursive: "Recursively perform command for subdirectories."
    mulled_cond_a_version: "Install a specific version of Conda before running the command, by default the version that comes with the continuumio miniconda3 image will be used under Linux and under Mac OS X Conda will be upgraded to to work around a bug in 4.2."
    mulled_namespace: "Build a mulled image with the specified namespace - defaults to biocontainers. Galaxy currently only recognizes images with the namespace biocontainers."
    mulled_command: "Mulled action to perform for targets - this defaults to 'build-and-test'."
    cond_a_ensure_channels: "Ensure conda is configured with specified comma separated list of channels."
    tool_path: ""
  }
}