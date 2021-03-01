version 1.0

task PpanggolinCluster {
  input {
    File? pan_genome
    Boolean? defrag
    Int? translation_table
    String? clusters
    Boolean? infer_singletons
    Float? coverage
    Float? identity
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin cluster \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if (defrag) then "--defrag" else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if (infer_singletons) then "--infer_singletons" else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    defrag: "Use the defragmentation strategy to associated\\npotential fragments with their original gene family.\\n(default: False)"
    translation_table: "Translation table (genetic code) to use. (default: 11)"
    clusters: "A tab-separated list containing the result of a\\nclustering. One line per gene. First column is cluster\\nID, and second is gene ID (default: None)"
    infer_singletons: "When reading a clustering result with --clusters, if a\\ngene is not in the provided file it will be placed in\\na cluster where the gene is the only member. (default:\\nFalse)"
    coverage: "Minimal coverage of the alignment for two proteins to\\nbe in the same cluster (default: 0.8)"
    identity: "Minimal identity percent for two proteins to be in the\\nsame cluster (default: 0.8)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}