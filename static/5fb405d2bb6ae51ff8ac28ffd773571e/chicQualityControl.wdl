version 1.0

task ChicQualityControl {
  input {
    Array[String] matrices
    String? reference_points
    String? sparsity
    String? out_filename
    String? out_filename_histogram
    String? out_filename_sparsity
    String? threads
    String? fixate_range
    String? dpi
  }
  command <<<
    chicQualityControl \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(reference_points) then ("--referencePoints " +  '"' + reference_points + '"') else ""} \
      ~{if defined(sparsity) then ("--sparsity " +  '"' + sparsity + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(out_filename_histogram) then ("--outFileNameHistogram " +  '"' + out_filename_histogram + '"') else ""} \
      ~{if defined(out_filename_sparsity) then ("--outFileNameSparsity " +  '"' + out_filename_sparsity + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fixate_range) then ("--fixateRange " +  '"' + fixate_range + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  parameter_meta {
    matrices: "The input matrices to apply the QC on."
    reference_points: "Bed file contains all reference points which are checked for a sufficient number of interactions."
    sparsity: "Viewpoints with a sparsity less than the value given are considered of bad quality. If multiple matrices are given, the viewpoint is removed as soon as it is of bad quality in at least one matrix."
    out_filename: "The output file name of the passed reference points. Used as prefix for the plots as well."
    out_filename_histogram: "The output file for the histogram plot."
    out_filename_sparsity: "The output file for the sparsity distribution plot."
    threads: "Number of threads."
    fixate_range: "Fixate score of background model starting at distance x. E.g. all values greater than 500kb are set to the value of the 500kb bin."
    dpi: "Optional parameter: Resolution for the image if theoutput is a raster graphics image (e.g png, jpg)"
  }
}