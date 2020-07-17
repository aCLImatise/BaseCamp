version 1.0

task ChicViewpointBackgroundModel {
  input {
    Array[String] matrices
    String? reference_points
    String? average_contact_bin
    Boolean? truncate_zeros
    String? out_filename
    String? threads
    String? fixate_range
  }
  command <<<
    chicViewpointBackgroundModel \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(reference_points) then ("--referencePoints " +  '"' + reference_points + '"') else ""} \
      ~{if defined(average_contact_bin) then ("--averageContactBin " +  '"' + average_contact_bin + '"') else ""} \
      ~{true="--truncateZeros" false="" truncate_zeros} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fixate_range) then ("--fixateRange " +  '"' + fixate_range + '"') else ""}
  >>>
  parameter_meta {
    matrices: "The input matrices (samples) to build the background model on."
    reference_points: "Bed file contains all reference points which should be used to build the background model."
    average_contact_bin: "Average the contacts of n bins via a sliding window approach."
    truncate_zeros: "Truncates the zeros before the distributions are fitted. Use it in case you observe an over dispersion."
    out_filename: "The name of the background model file"
    threads: "Number of threads (uses the python multiprocessing module)."
    fixate_range: "Fixate score of backgroundmodel starting at distance x. E.g. all values greater 500kb are set to the value of the 500kb bin."
  }
}