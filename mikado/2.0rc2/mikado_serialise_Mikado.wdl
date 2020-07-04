version 1.0

task MikadoSerialiseMikado {
  input {
    Boolean? optional_log_file
    String? log_level
    String? seed
    String? start_method
    String db
  }
  command <<<
    mikado serialise Mikado \
      ~{db} \
      ~{true="-l" false="" optional_log_file} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(start_method) then ("--start-method " +  '"' + start_method + '"') else ""}
  >>>
  parameter_meta {
    optional_log_file: "[LOG], --log [LOG] Optional log file. Default: stderr"
    log_level: "Log level. Default: derived from the configuration; if absent, INFO"
    seed: "Random seed number."
    start_method: ""
    db: "Optional output database. Default: derived from json_conf"
  }
}