version 1.0

task DRepCompare {
  input {
    Int? processors
    Boolean? debug
    Boolean? genomes_filter_ifbdb
    String? s_algorithm
    Int? mash_sketch
    Boolean? skip_mash
    Boolean? skip_secondary
    String? n_preset
    Float? p_ani
    Float? s_ani
    Float? cov_thresh
    String? coverage_method
    String? cluster_alg
    Boolean? multi_round_primary_clustering
    Int? primary_chunksize
    Boolean? greedy_secondary_clustering
    Boolean? run_tertiary_clustering
    Float? warn_dist
    Float? warn_sim
    Float? warn_aln
    String? genomes
  }
  command <<<
    dRep compare \
      ~{genomes} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (genomes_filter_ifbdb) then "-g" else ""} \
      ~{if defined(s_algorithm) then ("--S_algorithm " +  '"' + s_algorithm + '"') else ""} \
      ~{if defined(mash_sketch) then ("--MASH_sketch " +  '"' + mash_sketch + '"') else ""} \
      ~{if (skip_mash) then "--SkipMash" else ""} \
      ~{if (skip_secondary) then "--SkipSecondary" else ""} \
      ~{if defined(n_preset) then ("--n_PRESET " +  '"' + n_preset + '"') else ""} \
      ~{if defined(p_ani) then ("--P_ani " +  '"' + p_ani + '"') else ""} \
      ~{if defined(s_ani) then ("--S_ani " +  '"' + s_ani + '"') else ""} \
      ~{if defined(cov_thresh) then ("--cov_thresh " +  '"' + cov_thresh + '"') else ""} \
      ~{if defined(coverage_method) then ("--coverage_method " +  '"' + coverage_method + '"') else ""} \
      ~{if defined(cluster_alg) then ("--clusterAlg " +  '"' + cluster_alg + '"') else ""} \
      ~{if (multi_round_primary_clustering) then "--multiround_primary_clustering" else ""} \
      ~{if defined(primary_chunksize) then ("--primary_chunksize " +  '"' + primary_chunksize + '"') else ""} \
      ~{if (greedy_secondary_clustering) then "--greedy_secondary_clustering" else ""} \
      ~{if (run_tertiary_clustering) then "--run_tertiary_clustering" else ""} \
      ~{if defined(warn_dist) then ("--warn_dist " +  '"' + warn_dist + '"') else ""} \
      ~{if defined(warn_sim) then ("--warn_sim " +  '"' + warn_sim + '"') else ""} \
      ~{if defined(warn_aln) then ("--warn_aln " +  '"' + warn_aln + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/drep:3.2.0--py_0"
  }
  parameter_meta {
    processors: "threads (default: 6)"
    debug: "make extra debugging output (default: False)"
    genomes_filter_ifbdb: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\\ngenomes to filter in .fasta format. Not necessary if\\nBdb or Wdb already exist. Can also input a text file\\nwith paths to genomes, which results in fewer OS\\nissues than wildcard expansion (default: None)"
    s_algorithm: "Algorithm for secondary clustering comaprisons:\\nfastANI = Kmer-based approach; very fast\\nANImf   = (DEFAULT) Align whole genomes with nucmer; filter alignment; compare aligned regions\\nANIn    = Align whole genomes with nucmer; compare aligned regions\\ngANI    = Identify and align ORFs; compare aligned ORFS\\ngoANI   = Open source version of gANI; requires nsmimscan\\n(default: ANImf)"
    mash_sketch: "MASH sketch size (default: 1000)"
    skip_mash: "Skip MASH clustering, just do secondary clustering on\\nall genomes (default: False)"
    skip_secondary: "Skip secondary clustering, just perform MASH\\nclustering (default: False)"
    n_preset: "Presets to pass to nucmer\\ntight   = only align highly conserved regions\\nnormal  = default ANIn parameters (default: normal)"
    p_ani: "ANI threshold to form primary (MASH) clusters\\n(default: 0.9)"
    s_ani: "ANI threshold to form secondary clusters (default:\\n0.99)"
    cov_thresh: "Minmum level of overlap between genomes when doing\\nsecondary comparisons (default: 0.1)"
    coverage_method: "Method to calculate coverage of an alignment\\n(for ANIn/ANImf only; gANI and fastANI can only do larger method)\\ntotal   = 2*(aligned length) / (sum of total genome lengths)\\nlarger  = max((aligned length / genome 1), (aligned_length / genome2))\\n(default: larger)"
    cluster_alg: "Algorithm used to cluster genomes (passed to\\nscipy.cluster.hierarchy.linkage (default: average)"
    multi_round_primary_clustering: "Cluster each primary clunk separately and merge at the\\nend with single linkage. Decreases RAM usage and\\nincreases speed, and the cost of a minor loss in\\nprecision and the inability to plot\\nprimary_clustering_dendrograms. Especially helpful\\nwhen clustering 5000+ genomes. Will be done with\\nsingle linkage clustering (default: False)"
    primary_chunksize: "Impacts multiround_primary_clustering. If you have\\nmore than this many genomes, process them in chunks of\\nthis size. (default: 5000)"
    greedy_secondary_clustering: "Use a heuristic to avoid pair-wise comparisons when\\ndoing secondary clustering. Will be done with single\\nlinkage clustering. Only works for fastANI S_algorithm\\noption at the moment (default: False)"
    run_tertiary_clustering: "Run an additional round of clustering on the final\\ngenome set. This is especially useful when greedy\\nclustering is performed and/or to handle cases where\\nsimilar genomes end up in different primary clusters.\\nOnly works with dereplicate, not compare. (default:\\nFalse)"
    warn_dist: "How far from the threshold to throw cluster warnings\\n(default: 0.25)"
    warn_sim: "Similarity threshold for warnings between dereplicated\\ngenomes (default: 0.98)"
    warn_aln: "Minimum aligned fraction for warnings between\\ndereplicated genomes (ANIn) (default: 0.25)"
    genomes: ""
  }
  output {
    File out_stdout = stdout()
  }
}