version 1.0

task RefgenieRemove {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Int? genome
    Boolean? force
    Boolean? aliases
    String asset_registry_paths
  }
  command <<<
    refgenie remove \
      ~{asset_registry_paths} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (aliases) then "--aliases" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if REFGENIE\\nenvironment variable is set."
    skip_read_lock: "Whether the config file should not be locked for reading"
    genome: "Reference assembly ID, e.g. mm10."
    force: "Do not prompt before action, approve upfront."
    aliases: "Remove the genome alias if last asset for that genome is\\nremoved.\\n"
    asset_registry_paths: "One or more registry path strings that identify assets (e.g.\\nhg38/fasta or hg38/fasta:tag)."
  }
  output {
    File out_stdout = stdout()
  }
}