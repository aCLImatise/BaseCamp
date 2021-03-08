version 1.0

task Moscapy {
  input {
    File? snake_file
    File? config_file
    Boolean? unlock
    Boolean? v
    String required
  }
  command <<<
    mosca_py \
      ~{required} \
      ~{if defined(snake_file) then ("--snakefile " +  '"' + snake_file + '"') else ""} \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mosca:1.3.4--0"
  }
  parameter_meta {
    snake_file: "Snakefile file"
    config_file: "Configuration file for MOSCA (JSON or YAML)"
    unlock: "If user forced termination of workflow, this might be"
    v: ""
    required: "-v, --version         show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}