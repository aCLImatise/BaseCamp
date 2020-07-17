version 1.0

task HicDetectLoops {
  input {
    String? matrix
    String? out_filename
    String? peak_width
    String? window_size
    String? p_value_preselection
    String? peak_interactions_threshold
    Int? maximum_interaction_percentage_threshold
    String? p_value
    Int? max_loop_distance
    Int? min_loop_distance
    Array[String] chromosomes
    String? region
    String? threads
    String? threads_per_chromosome
    String? statistical_test
  }
  command <<<
    hicDetectLoops \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(peak_width) then ("--peakWidth " +  '"' + peak_width + '"') else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(p_value_preselection) then ("--pValuePreselection " +  '"' + p_value_preselection + '"') else ""} \
      ~{if defined(peak_interactions_threshold) then ("--peakInteractionsThreshold " +  '"' + peak_interactions_threshold + '"') else ""} \
      ~{if defined(maximum_interaction_percentage_threshold) then ("--maximumInteractionPercentageThreshold " +  '"' + maximum_interaction_percentage_threshold + '"') else ""} \
      ~{if defined(p_value) then ("--pValue " +  '"' + p_value + '"') else ""} \
      ~{if defined(max_loop_distance) then ("--maxLoopDistance " +  '"' + max_loop_distance + '"') else ""} \
      ~{if defined(min_loop_distance) then ("--minLoopDistance " +  '"' + min_loop_distance + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(threads_per_chromosome) then ("--threadsPerChromosome " +  '"' + threads_per_chromosome + '"') else ""} \
      ~{if defined(statistical_test) then ("--statisticalTest " +  '"' + statistical_test + '"') else ""}
  >>>
  parameter_meta {
    matrix: "The matrix to compute the loop detection on."
    out_filename: "Outfile name to store the detected loops. The file will in bedgraph format."
    peak_width: "The width of the peak region in bins. The square around the peak will include (2 * peakWidth)^2 bins."
    window_size: "The window size for the neighborhood region the peak is located in. All values from this region (exclude the values from the peak region) are tested against the peak region for significant difference. The square will have the size of (2 * windowSize)^2 bins"
    p_value_preselection: "Only candidates with p-values less the given threshold will be considered as candidates. For each genomic distance a negative binomial distribution is fitted and for each pixel a p-value given by the cumulative density function is given. This does NOT influence the p-value for the neighborhood testing."
    peak_interactions_threshold: "The minimum number of interactions a detected peaks needs to have to be considered."
    maximum_interaction_percentage_threshold: "For each distance the maximum value is considered and all candidates need to have at least 'max_value * maximumInteractionPercentageThreshold' interactions."
    p_value: "Rejection level for Anderson-Darling test for H0. H0 is peak region and background have the same distribution."
    max_loop_distance: "Maximum genomic distance of a loop, usually loops are within a distance of ~2MB."
    min_loop_distance: "Minimum genomic distance of a loop to be considered."
    chromosomes: "Chromosomes to include in the analysis. If not set, all chromosomes are included."
    region: "The format is chr:start-end."
    threads: "Number of threads to use, the parallelization is implemented per chromosome."
    threads_per_chromosome: "Number of threads to use per parallel thread processing a chromosome. E.g. --threads = 4 and --threadsPerChromosome = 4 makes 4 * 4 = 16 threads in total."
    statistical_test: "Which statistical test should be used."
  }
}