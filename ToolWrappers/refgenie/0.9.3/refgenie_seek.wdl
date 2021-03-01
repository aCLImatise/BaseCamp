version 1.0

task RefgenieSeek {
  input {
    File? genome_config
    Int? genome
    Boolean? check_exists
    String asset_registry_paths
  }
  command <<<
    refgenie seek \
      ~{asset_registry_paths} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (check_exists) then "--check-exists" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.9.3--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    genome: "Reference assembly ID, e.g. mm10."
    check_exists: "Whether the returned asset path should be checked for\\nexistence on disk.\\n"
    asset_registry_paths: "One or more registry path strings that identify assets\\n(e.g. hg38/fasta or hg38/fasta:tag or\\nhg38/fasta.fai:tag)."
  }
  output {
    File out_stdout = stdout()
  }
}