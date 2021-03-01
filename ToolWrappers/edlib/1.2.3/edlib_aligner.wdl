version 1.0

task Edlibaligner {
  input {
    Boolean? specified_there_be
    String? nwshw_alignment_mode
    Int? score_calculated_only
    Int? sequences_score_k
    Boolean? specified_alignment_path
    Boolean? specified_start_locations
    File? cigstdcigext_format_used
    String? options_dot_dot_dot
    String queries_dot_fast_a
    String target_dot_fast_a
  }
  command <<<
    edlib_aligner \
      ~{options_dot_dot_dot} \
      ~{queries_dot_fast_a} \
      ~{target_dot_fast_a} \
      ~{if (specified_there_be) then "-s" else ""} \
      ~{if defined(nwshw_alignment_mode) then ("-m " +  '"' + nwshw_alignment_mode + '"') else ""} \
      ~{if defined(score_calculated_only) then ("-n " +  '"' + score_calculated_only + '"') else ""} \
      ~{if defined(sequences_score_k) then ("-k " +  '"' + sequences_score_k + '"') else ""} \
      ~{if (specified_alignment_path) then "-p" else ""} \
      ~{if (specified_start_locations) then "-l" else ""} \
      ~{if defined(cigstdcigext_format_used) then ("-f " +  '"' + cigstdcigext_format_used + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specified_there_be: "If specified, there will be no score or alignment output (silent mode)."
    nwshw_alignment_mode: "|NW|SHW  Alignment mode that will be used. [default: NW]"
    score_calculated_only: "Score will be calculated only for N best sequences (best = with smallest score). If N = 0 then all sequences will be calculated. Specifying small N can make total calculation much faster. [default: 0]"
    sequences_score_k: "Sequences with score > K will be discarded. Smaller k, faster calculation. If -1, no sequences will be discarded. [default: -1]"
    specified_alignment_path: "If specified, alignment path will be found and printed. This may significantly slow down the calculation."
    specified_start_locations: "If specified, start locations will be found and printed. Each start location corresponds to one end location. This may somewhat slow down the calculation, but is still faster then finding alignment path and does not consume any extra memory."
    cigstdcigext_format_used: "|CIG_STD|CIG_EXT  Format that will be used to print alignment path, can be used only with -p. NICE will give visually attractive format, CIG_STD will  give standard cigar format and CIG_EXT will give extended cigar format. [default: NICE]"
    options_dot_dot_dot: ""
    queries_dot_fast_a: ""
    target_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}