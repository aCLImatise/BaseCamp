version 1.0

task HicCorrectMatrixCorrect {
  input {
    Int? matrix
    File? out_filename
    String? correction_method
    Float? filter_threshold
    Int? iter_num
    Int? inflation_cut_off
    Float? trans_cut_off
    Float? sequenced_count_cut_off
    Array[String] chromosomes
    Boolean? skip_diagonal
    Boolean? per_chr
    Boolean? verbose
    Int? one_dot_two
  }
  command <<<
    hicCorrectMatrix correct \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(correction_method) then ("--correctionMethod " +  '"' + correction_method + '"') else ""} \
      ~{if defined(filter_threshold) then ("--filterThreshold " +  '"' + filter_threshold + '"') else ""} \
      ~{if defined(iter_num) then ("--iterNum " +  '"' + iter_num + '"') else ""} \
      ~{if defined(inflation_cut_off) then ("--inflationCutoff " +  '"' + inflation_cut_off + '"') else ""} \
      ~{if defined(trans_cut_off) then ("--transCutoff " +  '"' + trans_cut_off + '"') else ""} \
      ~{if defined(sequenced_count_cut_off) then ("--sequencedCountCutoff " +  '"' + sequenced_count_cut_off + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if (skip_diagonal) then "--skipDiagonal" else ""} \
      ~{if (per_chr) then "--perchr" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(one_dot_two) then ("-1.2 " +  '"' + one_dot_two + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "Name of the Hi-C matrix to correct in .h5 format.\\n(default: None)"
    out_filename: "File name to save the resulting matrix. The output is\\na .h5 file. (default: None)"
    correction_method: "Method to be used for matrix correction. It can be set\\nto KR or ICE. (default: KR)"
    filter_threshold: "FILTERTHRESHOLD, -t FILTERTHRESHOLD FILTERTHRESHOLD\\nRemoves bins of low or large coverage. Usually these\\nbins do not contain valid Hi-C data or represent\\nregions that accumulate reads and thus must be\\ndiscarded. Use hicCorrectMatrix diagnostic_plot to\\nidentify the modified z-value thresholds. A lower and\\nupper threshold are required separated by space, e.g.\\n--filterThreshold -1.5 5. Applied only for ICE!\\n(default: None)"
    iter_num: "Number of iterations to compute.only for ICE!\\n(default: 500)"
    inflation_cut_off: "Value corresponding to the maximum number of times a\\nbin can be scaled up during the iterative correction.\\nFor example, an inflation cutoff of 3 will filter out\\nall bins that were expanded 3 times or more during the\\niterative correctionself.Only for ICE! (default: None)"
    trans_cut_off: "Clip high counts in the top -transcut trans regions\\n(i.e. between chromosomes). A usual value is 0.05.\\nOnly for ICE! (default: None)"
    sequenced_count_cut_off: "Each bin receives a value indicating the fraction that\\nis covered by reads. A cutoff of 0.5 will discard all\\nthose bins that have less than half of the bin\\ncovered. Only for ICE! (default: None)"
    chromosomes: "List of chromosomes to be included in the iterative\\ncorrection. The order of the given chromosomes will be\\nthen kept for the resulting corrected matrix (default:\\nNone)"
    skip_diagonal: "If set, diagonal counts are not included. Only for\\nICE! (default: False)"
    per_chr: "Normalize each chromosome separately. This is useful\\nfor samples from cells with uneven number of\\nchromosomes and/or translocations. (default: False)"
    verbose: "Print processing status. (default: False)"
    one_dot_two: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}