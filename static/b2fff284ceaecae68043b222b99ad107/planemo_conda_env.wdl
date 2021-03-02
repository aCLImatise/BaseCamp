version 1.0

task PlanemoCondaEnv {
  input {
    Directory? cond_a_prefix
    Boolean? cond_a_debug
    String? cond_a_ensure_channels
    Boolean? cond_a_use_local
    String tool_dot
    String commands_dot
  }
  command <<<
    planemo conda_env \
      ~{tool_dot} \
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
    tool_dot: "$ . <(planemo conda_env seqtk_seq.xml)\\nDeactivate environment with conda_env_deactivate\\n(seqtk_seq_v6) $ which seqtk\\n/home/planemo/miniconda2/envs/jobdepsDkzcjjfecc6d406196737781ff4456ec60975c137e04884e4f4b05dc68192f7cec4656/bin/seqtk\\n(seqtk_seq_v6) $ conda_env_deactivate\\n$"
    commands_dot: "--conda_exec FILE               Location of conda executable."
  }
  output {
    File out_stdout = stdout()
  }
}