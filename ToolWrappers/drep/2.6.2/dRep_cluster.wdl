version 1.0

task DRepCluster {
  input {
    Int? processors
    Boolean? debug
    Int? mash_sketch
    String? s_algorithm
    String? n_preset
    Float? p_ani
    Float? s_ani
    Boolean? skip_mash
    Boolean? skip_secondary
    Float? cov_thresh
    String? coverage_method
    String? cluster_alg
    Boolean? genomes_cluster_format
  }
  command <<<
    dRep cluster \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(mash_sketch) then ("--MASH_sketch " +  '"' + mash_sketch + '"') else ""} \
      ~{if defined(s_algorithm) then ("--S_algorithm " +  '"' + s_algorithm + '"') else ""} \
      ~{if defined(n_preset) then ("--n_PRESET " +  '"' + n_preset + '"') else ""} \
      ~{if defined(p_ani) then ("--P_ani " +  '"' + p_ani + '"') else ""} \
      ~{if defined(s_ani) then ("--S_ani " +  '"' + s_ani + '"') else ""} \
      ~{if (skip_mash) then "--SkipMash" else ""} \
      ~{if (skip_secondary) then "--SkipSecondary" else ""} \
      ~{if defined(cov_thresh) then ("--cov_thresh " +  '"' + cov_thresh + '"') else ""} \
      ~{if defined(coverage_method) then ("--coverage_method " +  '"' + coverage_method + '"') else ""} \
      ~{if defined(cluster_alg) then ("--clusterAlg " +  '"' + cluster_alg + '"') else ""} \
      ~{if (genomes_cluster_format) then "-g" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    processors: "threads (default: 6)"
    debug: "make extra debugging output (default: False)"
    mash_sketch: "MASH sketch size (default: 1000)"
    s_algorithm: "Algorithm for secondary clustering comaprisons:\\nfastANI = Kmer-based approach; very fast\\nANImf   = (DEFAULT) Align whole genomes with nucmer; filter alignment; compare aligned regions\\nANIn    = Align whole genomes with nucmer; compare aligned regions\\ngANI    = Identify and align ORFs; compare aligned ORFS\\ngoANI   = Open source version of gANI; requires nsmimscan\\n(default: ANImf)"
    n_preset: "Presets to pass to nucmer\\ntight   = only align highly conserved regions\\nnormal  = default ANIn parameters (default: normal)"
    p_ani: "ANI threshold to form primary (MASH) clusters\\n(default: 0.9)"
    s_ani: "ANI threshold to form secondary clusters (default:\\n0.99)"
    skip_mash: "Skip MASH clustering, just do secondary clustering on\\nall genomes (default: False)"
    skip_secondary: "Skip secondary clustering, just perform MASH\\nclustering (default: False)"
    cov_thresh: "Minmum level of overlap between genomes when doing\\nsecondary comparisons (default: 0.1)"
    coverage_method: "Method to calculate coverage of an alignment\\n(for ANIn/ANImf only; gANI and fastANI can only do larger method)\\ntotal   = 2*(aligned length) / (sum of total genome lengths)\\nlarger  = max((aligned length / genome 1), (aligned_length / genome2))\\n(default: larger)"
    cluster_alg: "Algorithm used to cluster genomes (passed to\\nscipy.cluster.hierarchy.linkage (default: average)"
    genomes_cluster_format: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\\ngenomes to cluster in .fasta format. Not necessary if\\nalready loaded sequences with the \\\"filter\\\" operation\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}