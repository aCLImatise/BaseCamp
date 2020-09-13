version 1.0

task ChicQualityControl {
  input {
    Array[String] matrices
    Int? reference_points
    String? sparsity
    File? out_filename
    File? out_filename_histogram
    File? out_filename_sparsity
    Int? threads
    Int? fixate_range
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
    reference_points: "Bed file contains all reference points which are\\nchecked for a sufficient number of interactions."
    sparsity: "Viewpoints with a sparsity less than the value given\\nare considered of bad quality. If multiple matrices\\nare given, the viewpoint is removed as soon as it is\\nof bad quality in at least one matrix."
    out_filename: "The output file name of the passed reference points.\\nUsed as prefix for the plots as well."
    out_filename_histogram: "The output file for the histogram plot."
    out_filename_sparsity: "The output file for the sparsity distribution plot."
    threads: "Number of threads."
    fixate_range: "Fixate score of background model starting at distance\\nx. E.g. all values greater than 500kb are set to the\\nvalue of the 500kb bin."
    dpi: "Optional parameter: Resolution for the image if\\ntheoutput is a raster graphics image (e.g png, jpg)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
    File out_out_filename_histogram = "${in_out_filename_histogram}"
    File out_out_filename_sparsity = "${in_out_filename_sparsity}"
  }
}