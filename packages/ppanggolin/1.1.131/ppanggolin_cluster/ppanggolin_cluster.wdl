version 1.0

task PpanggolinCluster {
  input {
    File? pan_genome
    Boolean? no_defrag
    Int? translation_table
    String? clusters
    Boolean? infer_singletons
    String? mode
    Float? coverage
    Float? identity
    Directory? tmpdir
    String? verbose
    File? log
    Boolean? disable_prog_bar
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin cluster \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if (no_defrag) then "--no_defrag" else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if (infer_singletons) then "--infer_singletons" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (disable_prog_bar) then "--disable_prog_bar" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ppanggolin:1.1.131--py37hf01694f_0"
  }
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    no_defrag: "DO NOT Use the defragmentation strategy to link\\npotential fragments with their original gene family.\\n(default: False)"
    translation_table: "Translation table (genetic code) to use. (default: 11)"
    clusters: "A tab-separated list containing the result of a\\nclustering. One line per gene. First column is cluster\\nID, and second is gene ID (default: None)"
    infer_singletons: "When reading a clustering result with --clusters, if a\\ngene is not in the provided file it will be placed in\\na cluster where the gene is the only member. (default:\\nFalse)"
    mode: "the cluster mode of MMseqs2. 0: Setcover, 1: single\\nlinkage (or connected component), 2: CD-HIT-like, 3:\\nCD-HIT-like (lowmem) (default: 1)"
    coverage: "Minimal coverage of the alignment for two proteins to\\nbe in the same cluster (default: 0.8)"
    identity: "Minimal identity percent for two proteins to be in the\\nsame cluster (default: 0.8)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    disable_prog_bar: "disables the progress bars (default: False)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}