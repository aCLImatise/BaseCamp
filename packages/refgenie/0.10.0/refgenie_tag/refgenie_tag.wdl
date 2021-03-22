version 1.0

task RefgenieTag {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Int? genome
    Boolean? force
    String? tag
    Boolean? default
    String asset_registry_paths
  }
  command <<<
    refgenie tag \
      ~{asset_registry_paths} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if (default) then "--default" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if REFGENIE\\nenvironment variable is set."
    skip_read_lock: "Whether the config file should not be locked for reading"
    genome: "Reference assembly ID, e.g. mm10."
    force: "Do not prompt before action, approve upfront."
    tag: "Tag to assign to an asset."
    default: "Set the selected asset tag as the default one."
    asset_registry_paths: "One or more registry path strings that identify assets (e.g.\\nhg38/fasta or hg38/fasta:tag)."
  }
  output {
    File out_stdout = stdout()
  }
}