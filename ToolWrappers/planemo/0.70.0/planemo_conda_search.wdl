version 1.0

task PlanemoCondaSearch {
  input {
    Directory? cond_a_prefix
    Boolean? cond_a_debug
    String? cond_a_ensure_channels
    Boolean? cond_a_use_local
    String commands_dot
  }
  command <<<
    planemo conda_search \
      ~{commands_dot} \
      ~{if defined(cond_a_prefix) then ("--conda_prefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{if (cond_a_debug) then "--conda_debug" else ""} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""} \
      ~{if (cond_a_use_local) then "--conda_use_local" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cond_a_prefix: "Conda prefix to use for conda dependency"
    cond_a_debug: "Enable more verbose conda logging."
    cond_a_ensure_channels: "Ensure conda is configured with specified\\ncomma separated list of channels."
    cond_a_use_local: "Use locally built packages while building\\nConda environments."
    commands_dot: "--conda_exec FILE               Location of conda executable."
  }
  output {
    File out_stdout = stdout()
  }
}