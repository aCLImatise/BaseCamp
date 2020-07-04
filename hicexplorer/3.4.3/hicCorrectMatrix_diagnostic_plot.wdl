version 1.0

task HicCorrectMatrixDiagnosticPlot {
  input {
    String? matrix
    String? plot_name
    Array[String] chromosomes
    String? xmax
    Boolean? per_chr
    Boolean? verbose
  }
  command <<<
    hicCorrectMatrix diagnostic_plot \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(plot_name) then ("--plotName " +  '"' + plot_name + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(xmax) then ("--xMax " +  '"' + xmax + '"') else ""} \
      ~{true="--perchr" false="" per_chr} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    matrix: "Name of the Hi-C matrix to correct in .h5 format. (default: None)"
    plot_name: "File name to save the diagnostic plot. (default: None)"
    chromosomes: "List of chromosomes to be included in the iterative correction. The order of the given chromosomes will be then kept for the resulting corrected matrix. (default: None)"
    xmax: "Max value for the x-axis in counts per bin. (default: None)"
    per_chr: "Compute histogram per chromosome. For samples from cells with uneven number of chromosomes and/or translocations it is advisable to check the histograms per chromosome to find the most conservative `filterThreshold`. (default: False)"
    verbose: "Print processing status. (default: False)"
  }
}