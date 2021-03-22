version 1.0

task RefgenieGetseq {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Int? genome
    Int? locus
  }
  command <<<
    refgenie getseq \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(locus) then ("--locus " +  '"' + locus + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if REFGENIE\\nenvironment variable is set."
    skip_read_lock: "Whether the config file should not be locked for reading"
    genome: "Reference assembly ID, e.g. mm10."
    locus: "Coordinates of desired sequence; e.g. 'chr1:50000-50200'."
  }
  output {
    File out_stdout = stdout()
  }
}