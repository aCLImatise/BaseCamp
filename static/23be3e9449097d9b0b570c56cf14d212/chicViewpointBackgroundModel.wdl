version 1.0

task ChicViewpointBackgroundModel {
  input {
    Array[String] matrices
    File? reference_points
    Int? average_contact_bin
    Boolean? truncate_zeros
    File? out_filename
    Int? threads
    Int? fixate_range
  }
  command <<<
    chicViewpointBackgroundModel \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(reference_points) then ("--referencePoints " +  '"' + reference_points + '"') else ""} \
      ~{if defined(average_contact_bin) then ("--averageContactBin " +  '"' + average_contact_bin + '"') else ""} \
      ~{if (truncate_zeros) then "--truncateZeros" else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fixate_range) then ("--fixateRange " +  '"' + fixate_range + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrices: "The input matrices (samples) to build the background\\nmodel on."
    reference_points: "Bed file contains all reference points which should be\\nused to build the background model."
    average_contact_bin: "Average the contacts of n bins via a sliding window\\napproach (Default: 5)."
    truncate_zeros: "Truncates the zeros before the distributions are\\nfitted. Use it in case you observe an over dispersion."
    out_filename: "The name of the background model file (Default:\\nbackground_model.txt)."
    threads: "Number of threads (uses the python multiprocessing\\nmodule) (Default: 4)."
    fixate_range: "Fixate score of backgroundmodel starting at distance\\nx. E.g. all values greater 500kb are set to the value\\nof the 500kb bin (Default: 500000)."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}