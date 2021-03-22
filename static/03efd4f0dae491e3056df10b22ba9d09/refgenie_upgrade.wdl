version 1.0

task RefgenieUpgrade {
  input {
    File? genome_config
    Boolean? skip_read_lock
    String? target_version
    Boolean? force
  }
  command <<<
    refgenie upgrade \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(target_version) then ("--target-version " +  '"' + target_version + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if REFGENIE\\nenvironment variable is set."
    skip_read_lock: "Whether the config file should not be locked for reading"
    target_version: "Target config version for the upgrade."
    force: "Do not prompt before action, approve upfront."
  }
  output {
    File out_stdout = stdout()
  }
}