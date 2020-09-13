version 1.0

task Concoct {
  input {
    File? coverage_file
    File? composition_file
    Int? clusters
    Int? km_er_length
    Int? threads
    Int? length_threshold
    Int? read_length
    String? total_percentage_pc_a
    File? basename
    Int? seed
    Int? iterations
    Boolean? no_cov_normalization
    Boolean? no_total_coverage
    Boolean? no_original_data
    Boolean? converge_out
    Boolean? debug
  }
  command <<<
    concoct \
      ~{if defined(coverage_file) then ("--coverage_file " +  '"' + coverage_file + '"') else ""} \
      ~{if defined(composition_file) then ("--composition_file " +  '"' + composition_file + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(km_er_length) then ("--kmer_length " +  '"' + km_er_length + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(length_threshold) then ("--length_threshold " +  '"' + length_threshold + '"') else ""} \
      ~{if defined(read_length) then ("--read_length " +  '"' + read_length + '"') else ""} \
      ~{if defined(total_percentage_pc_a) then ("--total_percentage_pca " +  '"' + total_percentage_pc_a + '"') else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if (no_cov_normalization) then "--no_cov_normalization" else ""} \
      ~{if (no_total_coverage) then "--no_total_coverage" else ""} \
      ~{if (no_original_data) then "--no_original_data" else ""} \
      ~{if (converge_out) then "--converge_out" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    coverage_file: "specify the coverage file, containing a table where\\neach row correspond to a contig, and each column\\ncorrespond to a sample. The values are the average\\ncoverage for this contig in that sample. All values\\nare separated with tabs."
    composition_file: "specify the composition file, containing sequences in\\nfasta format. It is named the composition file since\\nit is used to calculate the kmer composition (the\\ngenomic signature) of each contig."
    clusters: "specify maximal number of clusters for VGMM, default\\n400."
    km_er_length: "specify kmer length, default 4."
    threads: "Number of threads to use"
    length_threshold: "specify the sequence length threshold, contigs shorter\\nthan this value will not be included. Defaults to\\n1000."
    read_length: "specify read length for coverage, default 100"
    total_percentage_pc_a: "The percentage of variance explained by the principal\\ncomponents for the combined data."
    basename: "Specify the basename for files or directory where\\noutputwill be placed. Path to existing directory or\\nbasenamewith a trailing '/' will be interpreted as a\\ndirectory.If not provided, current directory will be\\nused."
    seed: "Specify an integer to use as seed for clustering. 0\\ngives a random seed, 1 is the default seed and any\\nother positive integer can be used. Other values give\\nArgumentTypeError."
    iterations: "Specify maximum number of iterations for the VBGMM.\\nDefault value is 500"
    no_cov_normalization: "By default the coverage is normalized with regards to\\nsamples, then normalized with regards of contigs and\\nfinally log transformed. By setting this flag you skip\\nthe normalization and only do log transorm of the\\ncoverage."
    no_total_coverage: "By default, the total coverage is added as a new\\ncolumn in the coverage data matrix, independently of\\ncoverage normalization but previous to log\\ntransformation. Use this tag to escape this behaviour."
    no_original_data: "By default the original data is saved to disk. For big\\ndatasets, especially when a large k is used for\\ncompositional data, this file can become very large.\\nUse this tag if you don't want to save the original\\ndata."
    converge_out: "Write convergence info to files."
    debug: "Debug parameters."
  }
  output {
    File out_stdout = stdout()
  }
}