version 1.0

task RefgenieId {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Int? genome
    String asset_registry_paths
  }
  command <<<
    refgenie id \
      ~{asset_registry_paths} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if REFGENIE\\nenvironment variable is set."
    skip_read_lock: "Whether the config file should not be locked for reading"
    genome: "Reference assembly ID, e.g. mm10."
    asset_registry_paths: "One or more registry path strings that identify assets (e.g.\\nhg38/fasta or hg38/fasta:tag)."
  }
  output {
    File out_stdout = stdout()
  }
}