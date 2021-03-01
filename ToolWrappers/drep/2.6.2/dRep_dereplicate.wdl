version 1.0

task DRepDereplicate {
  input {
    Int? processors
    Boolean? debug
    Int? length
    Int? completeness
    Int? contamination
    Boolean? ignore_genome_quality
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
    Int? completeness_weight
    Int? contamination_weight
    Int? strain_heterogeneity_weight
    Int? n_five_zero_weight
    Int? size_weight
    Boolean? run_tax
    String? tax_method
    Int? percent
    File? cent_index
    Float? warn_dist
    Float? warn_sim
    Float? warn_aln
    Boolean? genomes_cluster_format
    String? check_m_method
    File? genome_info
  }
  command <<<
    dRep dereplicate \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(completeness) then ("--completeness " +  '"' + completeness + '"') else ""} \
      ~{if defined(contamination) then ("--contamination " +  '"' + contamination + '"') else ""} \
      ~{if (ignore_genome_quality) then "--ignoreGenomeQuality" else ""} \
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
      ~{if defined(completeness_weight) then ("--completeness_weight " +  '"' + completeness_weight + '"') else ""} \
      ~{if defined(contamination_weight) then ("--contamination_weight " +  '"' + contamination_weight + '"') else ""} \
      ~{if defined(strain_heterogeneity_weight) then ("--strain_heterogeneity_weight " +  '"' + strain_heterogeneity_weight + '"') else ""} \
      ~{if defined(n_five_zero_weight) then ("--N50_weight " +  '"' + n_five_zero_weight + '"') else ""} \
      ~{if defined(size_weight) then ("--size_weight " +  '"' + size_weight + '"') else ""} \
      ~{if (run_tax) then "--run_tax" else ""} \
      ~{if defined(tax_method) then ("--tax_method " +  '"' + tax_method + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(cent_index) then ("--cent_index " +  '"' + cent_index + '"') else ""} \
      ~{if defined(warn_dist) then ("--warn_dist " +  '"' + warn_dist + '"') else ""} \
      ~{if defined(warn_sim) then ("--warn_sim " +  '"' + warn_sim + '"') else ""} \
      ~{if defined(warn_aln) then ("--warn_aln " +  '"' + warn_aln + '"') else ""} \
      ~{if (genomes_cluster_format) then "-g" else ""} \
      ~{if defined(check_m_method) then ("--checkM_method " +  '"' + check_m_method + '"') else ""} \
      ~{if defined(genome_info) then ("--genomeInfo " +  '"' + genome_info + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    processors: "threads (default: 6)"
    debug: "make extra debugging output (default: False)"
    length: "Minimum genome length (default: 50000)"
    completeness: "Minumum genome completeness (default: 75)"
    contamination: "Maximum genome contamination (default: 25)"
    ignore_genome_quality: "Don't run checkM or do any quality filtering. NOT\\nRECOMMENDED! This is useful for use with\\nbacteriophages or eukaryotes or things where checkM\\nscoring does not work. Will only choose genomes based\\non length and N50 (default: False)"
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
    completeness_weight: "completeness weight (default: 1)"
    contamination_weight: "contamination weight (default: 5)"
    strain_heterogeneity_weight: "strain heterogeneity weight (default: 1)"
    n_five_zero_weight: "weight of log(genome N50) (default: 0.5)"
    size_weight: "weight of log(genome size) (default: 0)"
    run_tax: "generate taxonomy information (Tdb) (default: False)"
    tax_method: "Method of determining taxonomy\\npercent = The most descriptive taxonimic level with at least (per) hits\\nmax     = The centrifuge taxonomic level with the most overall hits (default: percent)"
    percent: "minimum percent for percent method (default: 50)"
    cent_index: "path to centrifuge index (for example,\\n/home/mattolm/download/centrifuge/indices/b+h+v\\n(default: None)"
    warn_dist: "How far from the threshold to throw cluster warnings\\n(default: 0.25)"
    warn_sim: "Similarity threshold for warnings between dereplicated\\ngenomes (default: 0.98)"
    warn_aln: "Minimum aligned fraction for warnings between\\ndereplicated genomes (ANIn) (default: 0.25)"
    genomes_cluster_format: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\\ngenomes to cluster in .fasta format; can pass a number\\nof .fasta files or a single text file listing the\\nlocations of all .fasta files (default: None)"
    check_m_method: "Either lineage_wf (more accurate) or taxonomy_wf\\n(faster) (default: lineage_wf)"
    genome_info: "location of .csv file containing quality information\\non the genomes. Must contain: [\\\"genome\\\"(basename of\\n.fasta file of that genome), \\\"completeness\\\"(0-100\\nvalue for completeness of the genome),\\n\\\"contamination\\\"(0-100 value of the contamination of\\nthe genome)] (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}