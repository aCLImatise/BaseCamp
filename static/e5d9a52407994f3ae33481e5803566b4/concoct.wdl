version 1.0

task Concoct {
  input {
    String? coverage_file
    String? composition_file
    String? clusters
    String? km_er_length
    String? threads
    Int? length_threshold
    String? read_length
    String? total_percentage_pc_a
    String? basename
    String? seed
    String? iterations
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
      ~{true="--no_cov_normalization" false="" no_cov_normalization} \
      ~{true="--no_total_coverage" false="" no_total_coverage} \
      ~{true="--no_original_data" false="" no_original_data} \
      ~{true="--converge_out" false="" converge_out} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    coverage_file: "specify the coverage file, containing a table where each row correspond to a contig, and each column correspond to a sample. The values are the average coverage for this contig in that sample. All values are separated with tabs."
    composition_file: "specify the composition file, containing sequences in fasta format. It is named the composition file since it is used to calculate the kmer composition (the genomic signature) of each contig."
    clusters: "specify maximal number of clusters for VGMM, default 400."
    km_er_length: "specify kmer length, default 4."
    threads: "Number of threads to use"
    length_threshold: "specify the sequence length threshold, contigs shorter than this value will not be included. Defaults to 1000."
    read_length: "specify read length for coverage, default 100"
    total_percentage_pc_a: "The percentage of variance explained by the principal components for the combined data."
    basename: "Specify the basename for files or directory where outputwill be placed. Path to existing directory or basenamewith a trailing '/' will be interpreted as a directory.If not provided, current directory will be used."
    seed: "Specify an integer to use as seed for clustering. 0 gives a random seed, 1 is the default seed and any other positive integer can be used. Other values give ArgumentTypeError."
    iterations: "Specify maximum number of iterations for the VBGMM. Default value is 500"
    no_cov_normalization: "By default the coverage is normalized with regards to samples, then normalized with regards of contigs and finally log transformed. By setting this flag you skip the normalization and only do log transorm of the coverage."
    no_total_coverage: "By default, the total coverage is added as a new column in the coverage data matrix, independently of coverage normalization but previous to log transformation. Use this tag to escape this behaviour."
    no_original_data: "By default the original data is saved to disk. For big datasets, especially when a large k is used for compositional data, this file can become very large. Use this tag if you don't want to save the original data."
    converge_out: "Write convergence info to files."
    debug: "Debug parameters."
  }
}