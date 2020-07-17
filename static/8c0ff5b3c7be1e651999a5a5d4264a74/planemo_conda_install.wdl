version 1.0

task PlanemoCondaInstall {
  input {
    Boolean? recursive
    Directory? cond_a_prefix
    File? cond_a_exec
    Boolean? cond_a_debug
    String? cond_a_ensure_channels
    Boolean? cond_a_use_local
    Boolean? global
    Boolean? cond_a_auto_in_it
    String target
  }
  command <<<
    planemo conda_install \
      ~{target} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(cond_a_prefix) then ("--conda_prefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{if defined(cond_a_exec) then ("--conda_exec " +  '"' + cond_a_exec + '"') else ""} \
      ~{true="--conda_debug" false="" cond_a_debug} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""} \
      ~{true="--conda_use_local" false="" cond_a_use_local} \
      ~{true="--global" false="" global} \
      ~{true="--conda_auto_init" false="" cond_a_auto_in_it}
  >>>
  parameter_meta {
    recursive: "Recursively perform command for subdirectories."
    cond_a_prefix: "Conda prefix to use for conda dependency commands."
    cond_a_exec: "Location of conda executable."
    cond_a_debug: "Enable more verbose conda logging."
    cond_a_ensure_channels: "Ensure conda is configured with specified comma separated list of channels."
    cond_a_use_local: "Use locally built packages while building Conda environments."
    global: "Install Conda dependencies globally instead of in requirement specific environments packaged for tools. If the Conda bin directory is on your PATH, tools may still use binaries but this is more designed for interactive testing and debugging."
    cond_a_auto_in_it: "/ --no_conda_auto_init Conda dependency resolution for Galaxy will auto install conda itself using miniconda if not availabe on conda_prefix."
    target: ""
  }
}