version 1.0

task FcUnzip.py {
  input {
    String? target
    String? logging_config_fn
    String config_fn
  }
  command <<<
    fc_unzip.py \
      ~{config_fn} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(logging_config_fn) then ("--logging-config-fn " +  '"' + logging_config_fn + '"') else ""}
  >>>
  parameter_meta {
    target: "target pipeline: clr=regular; ccs=only ccs data (default: clr)"
    logging_config_fn: "Optional standard Python logging config (default: None)"
    config_fn: "Configuration file. (TODO: This needs its own help section, or at least a link to a webpage.)"
  }
}