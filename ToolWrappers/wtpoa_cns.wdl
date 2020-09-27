version 1.0

task Wtpoacns {
  input {
    Int? number_of_threads
    File? input_files_wtdbg
    String? output_files
    Boolean? force_overwrite
    Int? expected_max_length
    Int? match_score
    Int? mismatch_score
    Int? insertion_score
    Int? deletion_score
    Int? window_size_middle
    Int? min_size_aligned
    Boolean? abort_tripoa_when
    Int? realignment_bandwidth_disable
    Int? min_count_call
    Float? min_frequency_call
    Int? max_number_going
    Boolean? verbose
  }
  command <<<
    wtpoa_cns \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(input_files_wtdbg) then ("-i " +  '"' + input_files_wtdbg + '"') else ""} \
      ~{if defined(output_files) then ("-o " +  '"' + output_files + '"') else ""} \
      ~{if (force_overwrite) then "-f" else ""} \
      ~{if defined(expected_max_length) then ("-j " +  '"' + expected_max_length + '"') else ""} \
      ~{if defined(match_score) then ("-M " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_score) then ("-X " +  '"' + mismatch_score + '"') else ""} \
      ~{if defined(insertion_score) then ("-I " +  '"' + insertion_score + '"') else ""} \
      ~{if defined(deletion_score) then ("-D " +  '"' + deletion_score + '"') else ""} \
      ~{if defined(window_size_middle) then ("-W " +  '"' + window_size_middle + '"') else ""} \
      ~{if defined(min_size_aligned) then ("-w " +  '"' + min_size_aligned + '"') else ""} \
      ~{if (abort_tripoa_when) then "-A" else ""} \
      ~{if defined(realignment_bandwidth_disable) then ("-R " +  '"' + realignment_bandwidth_disable + '"') else ""} \
      ~{if defined(min_count_call) then ("-C " +  '"' + min_count_call + '"') else ""} \
      ~{if defined(min_frequency_call) then ("-F " +  '"' + min_frequency_call + '"') else ""} \
      ~{if defined(max_number_going) then ("-N " +  '"' + max_number_going + '"') else ""} \
      ~{if (verbose) then "-v" else ""}
  >>>
  parameter_meta {
    number_of_threads: "Number of threads, [4]"
    input_files_wtdbg: "Input file(s) *.ctg.lay from wtdbg, +, [STDIN]"
    output_files: "Output files, [STDOUT]"
    force_overwrite: "Force overwrite"
    expected_max_length: "Expected max length of node, or say the overlap length of two adjacent units in layout file, [1500] bp"
    match_score: "Match score, [2]"
    mismatch_score: "Mismatch score, [-5]"
    insertion_score: "Insertion score, [-2]"
    deletion_score: "Deletion score, [-4]"
    window_size_middle: "Window size in the middle of the first read for fast align remaining reads, [200]\\nIf $W is negative, will disable fast align, but use the abs($W) as Band align score cutoff"
    min_size_aligned: "Min size of aligned size in window, [$W * 0.5]"
    abort_tripoa_when: "Abort TriPOA when any read cannot be fast aligned, then try POA"
    realignment_bandwidth_disable: "Realignment bandwidth, 0: disable, [16]"
    min_count_call: "Min count of bases to call a consensus base, [3]"
    min_frequency_call: "Min frequency of non-gap bases to call a consensus base, [0.5]"
    max_number_going: "Max number of reads in PO-MSA, [20]\\nKeep in mind that I am not going to generate high accurate consensus sequences here"
    verbose: "Verbose"
  }
  output {
    File out_stdout = stdout()
  }
}