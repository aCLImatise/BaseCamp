version 1.0

task HicDetectLoops {
  input {
    String? matrix
    File? out_filename
    Int? peak_width
    Int? window_size
    File? p_value_preselection
    Int? peak_interactions_threshold
    Int? obs_exp_threshold
    Int? p_value
    Int? max_loop_distance
    Array[String] chromosomes
    Int? threads
    Int? threads_per_chromosome
    String? expected
  }
  command <<<
    hicDetectLoops \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(peak_width) then ("--peakWidth " +  '"' + peak_width + '"') else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(p_value_preselection) then ("--pValuePreselection " +  '"' + p_value_preselection + '"') else ""} \
      ~{if defined(peak_interactions_threshold) then ("--peakInteractionsThreshold " +  '"' + peak_interactions_threshold + '"') else ""} \
      ~{if defined(obs_exp_threshold) then ("--obsExpThreshold " +  '"' + obs_exp_threshold + '"') else ""} \
      ~{if defined(p_value) then ("--pValue " +  '"' + p_value + '"') else ""} \
      ~{if defined(max_loop_distance) then ("--maxLoopDistance " +  '"' + max_loop_distance + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(threads_per_chromosome) then ("--threadsPerChromosome " +  '"' + threads_per_chromosome + '"') else ""} \
      ~{if defined(expected) then ("--expected " +  '"' + expected + '"') else ""}
  >>>
  parameter_meta {
    matrix: "The matrix to compute the loop detection on."
    out_filename: "Outfile name to store the detected loops. The file\\nwill in bedgraph format."
    peak_width: "The width of the peak region in bins. Default is 2.\\nThe square around the peak will include (2 *\\npeakWidth)^2 bins."
    window_size: "The window size for the neighborhood region the peak\\nis located in. Default is 5. All values from this\\nregion (exclude the values from the peak region) are\\ntested against the peak region for significant\\ndifference. The square will have the size of (2 *\\nwindowSize)^2 bins"
    p_value_preselection: "Only candidates with p-values less the given threshold\\nwill be considered as candidates. For each genomic\\ndistance a negative binomial distribution is fitted\\nand for each pixel a p-value given by the cumulative\\ndensity function is given. This does NOT influence the\\np-value for the neighborhood testing. Can a single\\nvalue or a threshold file created by\\nhicCreateThresholdFile."
    peak_interactions_threshold: "The minimum number of interactions a detected peaks\\nneeds to have to be considered."
    obs_exp_threshold: "The minimum number of obs/exp interactions a detected\\npeaks needs to have to be considered."
    p_value: "Rejection level for Anderson-Darling or Wilcoxon-rank\\nsum test for H0. H0 is peak region and background have\\nthe same distribution."
    max_loop_distance: "Maximum genomic distance of a loop, usually loops are\\nwithin a distance of ~2MB."
    chromosomes: "Chromosomes to include in the analysis. If not set,\\nall chromosomes are included."
    threads: "Number of threads to use, the parallelization is\\nimplemented per chromosome."
    threads_per_chromosome: "Number of threads to use per parallel thread\\nprocessing a chromosome. E.g. --threads = 4 and\\n--threadsPerChromosome = 4 makes 4 * 4 = 16 threads in\\ntotal."
    expected: "Method to compute the expected value per distance:\\nEither the mean, the mean of non-zero values or the\\nmean of non-zero values with ligation factor\\ncorrection."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}