version 1.0

task PlanemoContainerRegister {
  input {
    Boolean? recursive
    Directory? cond_a_prefix
    Boolean? cond_a_debug
    String? cond_a_ensure_channels
    Boolean? cond_a_use_local
    Directory? output_directory
    String? message
    Boolean? no_pull_request
    Boolean? no_force_push
    String tools_dot
    String subdirectories_dot
    String commands_dot
  }
  command <<<
    planemo container_register \
      ~{tools_dot} \
      ~{subdirectories_dot} \
      ~{commands_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(cond_a_prefix) then ("--conda_prefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{if (cond_a_debug) then "--conda_debug" else ""} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""} \
      ~{if (cond_a_use_local) then "--conda_use_local" else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""} \
      ~{if (no_pull_request) then "--no_pull_request" else ""} \
      ~{if (no_force_push) then "--no_force_push" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    recursive: "Recursively perform command for"
    cond_a_prefix: "Conda prefix to use for conda dependency"
    cond_a_debug: "Enable more verbose conda logging."
    cond_a_ensure_channels: "Ensure conda is configured with specified\\ncomma separated list of channels."
    cond_a_use_local: "Use locally built packages while building\\nConda environments."
    output_directory: "Container registration directory (defaults\\nto ~/.planemo/multi-package-containers."
    message: "Commit and pull request message template for\\nregistration interactions."
    no_pull_request: "Fork and create a pull request against\\nBioContainers/multi-package-containers for\\nthese changes."
    no_force_push: "Force push branch for pull request in case\\nit already exists."
    tools_dot: "Options:"
    subdirectories_dot: "--mulled_namespace TEXT         Build a mulled image with the specified"
    commands_dot: "--conda_exec FILE               Location of conda executable."
  }
  output {
    File out_stdout = stdout()
  }
}