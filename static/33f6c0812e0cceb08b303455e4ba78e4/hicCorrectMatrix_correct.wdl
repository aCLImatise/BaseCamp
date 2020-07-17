version 1.0

task HicCorrectMatrixCorrect {
  input {
    String? matrix
    String? out_filename
    Int? iter_num
    String? inflation_cut_off
    String? trans_cut_off
    String? sequenced_count_cut_off
    Array[String] chromosomes
    Boolean? skip_diagonal
    Boolean? per_chr
    Boolean? verbose
    Boolean? filter_threshold
    String? one_dot_two
  }
  command <<<
    hicCorrectMatrix correct \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(iter_num) then ("--iterNum " +  '"' + iter_num + '"') else ""} \
      ~{if defined(inflation_cut_off) then ("--inflationCutoff " +  '"' + inflation_cut_off + '"') else ""} \
      ~{if defined(trans_cut_off) then ("--transCutoff " +  '"' + trans_cut_off + '"') else ""} \
      ~{if defined(sequenced_count_cut_off) then ("--sequencedCountCutoff " +  '"' + sequenced_count_cut_off + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{true="--skipDiagonal" false="" skip_diagonal} \
      ~{true="--perchr" false="" per_chr} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--filterThreshold" false="" filter_threshold} \
      ~{if defined(one_dot_two) then ("-1.2 " +  '"' + one_dot_two + '"') else ""}
  >>>
  parameter_meta {
    matrix: "Name of the Hi-C matrix to correct in .h5 format. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is a .h5 file. (default: None)"
    iter_num: "Number of iterations to compute.only for ICE! (default: 500)"
    inflation_cut_off: "Value corresponding to the maximum number of times a bin can be scaled up during the iterative correction. For example, an inflation cutoff of 3 will filter out all bins that were expanded 3 times or more during the iterative correctionself.Only for ICE! (default: None)"
    trans_cut_off: "Clip high counts in the top -transcut trans regions (i.e. between chromosomes). A usual value is 0.05. Only for ICE! (default: None)"
    sequenced_count_cut_off: "Each bin receives a value indicating the fraction that is covered by reads. A cutoff of 0.5 will discard all those bins that have less than half of the bin covered. Only for ICE! (default: None)"
    chromosomes: "List of chromosomes to be included in the iterative correction. The order of the given chromosomes will be then kept for the resulting corrected matrix (default: None)"
    skip_diagonal: "If set, diagonal counts are not included. Only for ICE! (default: False)"
    per_chr: "Normalize each chromosome separately. This is useful for samples from cells with uneven number of chromosomes and/or translocations. (default: False)"
    verbose: "Print processing status. (default: False)"
    filter_threshold: ""
    one_dot_two: ""
  }
}