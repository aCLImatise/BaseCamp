version 1.0

task PlanemoCondaInstall {
  input {
    Boolean? recursive
    Boolean? cond_a_debug
    String? cond_a_ensure_channels
    Boolean? cond_a_use_local
    Boolean? global
    Boolean? no_cond_a_auto_in_it
    String subdirectories_dot
    String commands_dot
  }
  command <<<
    planemo conda_install \
      ~{subdirectories_dot} \
      ~{commands_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (cond_a_debug) then "--conda_debug" else ""} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""} \
      ~{if (cond_a_use_local) then "--conda_use_local" else ""} \
      ~{if (global) then "--global" else ""} \
      ~{if (no_cond_a_auto_in_it) then "--no_conda_auto_init" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    recursive: "Recursively perform command for"
    cond_a_debug: "Enable more verbose conda logging."
    cond_a_ensure_channels: "Ensure conda is configured with specified\\ncomma separated list of channels."
    cond_a_use_local: "Use locally built packages while building\\nConda environments."
    global: "Install Conda dependencies globally instead\\nof in requirement specific environments\\npackaged for tools. If the Conda bin\\ndirectory is on your PATH, tools may still\\nuse binaries but this is more designed for\\ninteractive testing and debugging."
    no_cond_a_auto_in_it: "Conda dependency resolution for Galaxy will\\nauto install conda itself using miniconda if\\nnot availabe on conda_prefix."
    subdirectories_dot: "--conda_prefix DIRECTORY        Conda prefix to use for conda dependency"
    commands_dot: "--conda_exec FILE               Location of conda executable."
  }
  output {
    File out_stdout = stdout()
  }
}