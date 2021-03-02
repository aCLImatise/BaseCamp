version 1.0

task HicCorrectMatrixDiagnosticPlot {
  input {
    Int? matrix
    File? plot_name
    Array[String] chromosomes
    Int? xmax
    Boolean? per_chr
    Boolean? verbose
  }
  command <<<
    hicCorrectMatrix diagnostic_plot \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(plot_name) then ("--plotName " +  '"' + plot_name + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(xmax) then ("--xMax " +  '"' + xmax + '"') else ""} \
      ~{if (per_chr) then "--perchr" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "Name of the Hi-C matrix to correct in .h5 format.\\n(default: None)"
    plot_name: "File name to save the diagnostic plot. (default: None)"
    chromosomes: "List of chromosomes to be included in the iterative\\ncorrection. The order of the given chromosomes will be\\nthen kept for the resulting corrected matrix.\\n(default: None)"
    xmax: "Max value for the x-axis in counts per bin. (default:\\nNone)"
    per_chr: "Compute histogram per chromosome. For samples from\\ncells with uneven number of chromosomes and/or\\ntranslocations it is advisable to check the histograms\\nper chromosome to find the most conservative\\n`filterThreshold`. (default: False)"
    verbose: "Print processing status. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}