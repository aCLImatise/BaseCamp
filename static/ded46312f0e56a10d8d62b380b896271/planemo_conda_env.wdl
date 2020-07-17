version 1.0

task PlanemoCondaEnv {
  input {
    Directory? cond_a_prefix
    File? cond_a_exec
    Boolean? cond_a_debug
    String? cond_a_ensure_channels
    Boolean? cond_a_use_local
    String tool_dot
  }
  command <<<
    planemo conda_env \
      ~{tool_dot} \
      ~{if defined(cond_a_prefix) then ("--conda_prefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{if defined(cond_a_exec) then ("--conda_exec " +  '"' + cond_a_exec + '"') else ""} \
      ~{true="--conda_debug" false="" cond_a_debug} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""} \
      ~{true="--conda_use_local" false="" cond_a_use_local}
  >>>
  parameter_meta {
    cond_a_prefix: "Conda prefix to use for conda dependency commands."
    cond_a_exec: "Location of conda executable."
    cond_a_debug: "Enable more verbose conda logging."
    cond_a_ensure_channels: "Ensure conda is configured with specified comma separated list of channels."
    cond_a_use_local: "Use locally built packages while building Conda environments."
    tool_dot: "$ . <(planemo conda_env seqtk_seq.xml) Deactivate environment with conda_env_deactivate (seqtk_seq_v6) $ which seqtk /home/planemo/miniconda2/envs/jobdepsDkzcjjfecc6d406196737781ff4456ec60975c137e04884e4f4b05dc68192f7cec4656/bin/seqtk (seqtk_seq_v6) $ conda_env_deactivate $"
  }
}