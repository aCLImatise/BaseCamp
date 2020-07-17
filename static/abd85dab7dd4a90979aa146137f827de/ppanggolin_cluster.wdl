version 1.0

task PpanggolinCluster {
  input {
    String? pan_genome
    Boolean? defrag
    String? translation_table
    String? clusters
    Boolean? infer_singletons
    String? coverage
    String? identity
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin cluster \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{true="--defrag" false="" defrag} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{true="--infer_singletons" false="" infer_singletons} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    defrag: "Use the defragmentation strategy to associated potential fragments with their original gene family. (default: False)"
    translation_table: "Translation table (genetic code) to use. (default: 11)"
    clusters: "A tab-separated list containing the result of a clustering. One line per gene. First column is cluster ID, and second is gene ID (default: None)"
    infer_singletons: "When reading a clustering result with --clusters, if a gene is not in the provided file it will be placed in a cluster where the gene is the only member. (default: False)"
    coverage: "Minimal coverage of the alignment for two proteins to be in the same cluster (default: 0.8)"
    identity: "Minimal identity percent for two proteins to be in the same cluster (default: 0.8)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}