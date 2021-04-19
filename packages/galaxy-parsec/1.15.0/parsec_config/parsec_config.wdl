version 1.0

task ParsecConfig {
  input {
    String get_config
    String get_version
  }
  command <<<
    parsec config \
      ~{get_config} \
      ~{get_version}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    get_config: "Get a list of attributes about the Galaxy instance."
    get_version: "Get the current version of the Galaxy instance."
  }
  output {
    File out_stdout = stdout()
  }
}