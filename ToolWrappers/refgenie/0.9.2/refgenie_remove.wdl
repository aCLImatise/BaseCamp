version 1.0

task RefgenieRemove {
  input {
    File? genome_config
    Int? genome
    Boolean? force
    String asset_registry_paths
  }
  command <<<
    refgenie remove \
      ~{asset_registry_paths} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    genome: "Reference assembly ID, e.g. mm10."
    force: "Do not prompt before action, approve upfront."
    asset_registry_paths: "One or more registry path strings that identify assets\\n(e.g. hg38/fasta or hg38/fasta:tag)."
  }
  output {
    File out_stdout = stdout()
  }
}