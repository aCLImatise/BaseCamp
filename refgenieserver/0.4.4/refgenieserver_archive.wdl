version 1.0

task RefgenieserverArchive {
  input {
    String? config
    Boolean? dbg
    String? genomes_desc
    Boolean? force
    Boolean? remove
    String asset_registry_paths
  }
  command <<<
    refgenieserver archive \
      ~{asset_registry_paths} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--dbg" false="" dbg} \
      ~{if defined(genomes_desc) then ("--genomes-desc " +  '"' + genomes_desc + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--remove" false="" remove}
  >>>
  parameter_meta {
    config: "A path to the refgenie config file (YAML). If not provided, the first available environment variable among: 'REFGENIE' will be used if set. Currently: not set"
    dbg: "Set logger verbosity to debug"
    genomes_desc: "Path to a CSV file with genomes descriptions. Format: genome_name, genome description"
    force: "whether the server file tree should be rebuilt even if exists"
    remove: "Remove selected genome, genome/asset or genome/asset:tag"
    asset_registry_paths: "One or more registry path strings that identify assets, e.g. hg38/fasta:tag"
  }
}