version 1.0

task RefgenieserverArchive {
  input {
    File? config
    Boolean? dbg
    File? genomes_desc
    Boolean? force
    String asset_registry_paths
    String exists
  }
  command <<<
    refgenieserver archive \
      ~{asset_registry_paths} \
      ~{exists} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (dbg) then "--dbg" else ""} \
      ~{if defined(genomes_desc) then ("--genomes-desc " +  '"' + genomes_desc + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenieserver:0.6.0--py_0"
  }
  parameter_meta {
    config: "A path to the refgenie config file (YAML). If not\\nprovided, the first available environment variable\\namong: 'REFGENIE' will be used if set. Currently: not\\nset"
    dbg: "Set logger verbosity to debug"
    genomes_desc: "Path to a CSV file with genomes descriptions. Format:\\ngenome_name, genome description"
    force: "whether the server file tree should be rebuilt even if"
    asset_registry_paths: "One or more registry path strings that identify\\nassets, e.g. hg38/fasta:tag"
    exists: "-r, --remove          Remove selected genome, genome/asset or"
  }
  output {
    File out_stdout = stdout()
  }
}