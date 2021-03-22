version 1.0

task RefgenieUnsubscribe {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Array[String] s
  }
  command <<<
    refgenie unsubscribe \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional\\nif REFGENIE environment variable is set."
    skip_read_lock: "Whether the config file should not be locked for"
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}