version 1.0

task RefgeniePull {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Int? genome
    Boolean? no_overwrite
    Boolean? force_overwrite
    Boolean? no_large
    Boolean? pull_large
    Int? size_cut_off
    Boolean? batch
    String asset_registry_paths
  }
  command <<<
    refgenie pull \
      ~{asset_registry_paths} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (no_overwrite) then "--no-overwrite" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (no_large) then "--no-large" else ""} \
      ~{if (pull_large) then "--pull-large" else ""} \
      ~{if defined(size_cut_off) then ("--size-cutoff " +  '"' + size_cut_off + '"') else ""} \
      ~{if (batch) then "--batch" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if REFGENIE\\nenvironment variable is set."
    skip_read_lock: "Whether the config file should not be locked for reading"
    genome: "Reference assembly ID, e.g. mm10."
    no_overwrite: "Do not overwrite if asset exists."
    force_overwrite: "Overwrite if asset exists."
    no_large: "Do not pull archives over 5GB."
    pull_large: "Pull any archive, regardless of its size."
    size_cut_off: "Maximum archive file size to download with no confirmation\\nrequired (in GB, default: 10)"
    batch: "Use batch mode: pull large archives, do no overwrite"
    asset_registry_paths: "One or more registry path strings that identify assets (e.g.\\nhg38/fasta or hg38/fasta:tag)."
  }
  output {
    File out_stdout = stdout()
  }
}