version 1.0

task FcPhase.py {
  input {
    String? logging_config_fn
    String config_fn
  }
  command <<<
    fc_phase.py \
      ~{config_fn} \
      ~{if defined(logging_config_fn) then ("--logging-config-fn " +  '"' + logging_config_fn + '"') else ""}
  >>>
  parameter_meta {
    logging_config_fn: "Optional standard Python logging config (default: None)"
    config_fn: "Configuration file. (This needs its own help section. Note: smrt_bin is deprecated, but if supplied will be appended to PATH.)"
  }
}