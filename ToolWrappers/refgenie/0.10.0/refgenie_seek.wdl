version 1.0

task RefgenieSeek {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Int? genome
    Boolean? check_exists
    String asset_registry_paths
  }
  command <<<
    refgenie seek \
      ~{asset_registry_paths} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (check_exists) then "--check-exists" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if REFGENIE\\nenvironment variable is set."
    skip_read_lock: "Whether the config file should not be locked for reading"
    genome: "Reference assembly ID, e.g. mm10."
    check_exists: "Whether the returned asset path should be checked for existence\\non disk.\\n"
    asset_registry_paths: "One or more registry path strings that identify assets (e.g.\\nhg38/fasta or hg38/fasta:tag or hg38/fasta.fai:tag)."
  }
  output {
    File out_stdout = stdout()
  }
}