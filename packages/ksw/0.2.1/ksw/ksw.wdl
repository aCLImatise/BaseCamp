version 1.0

task Ksw {
  input {
    Int? alignment_mode_extend
    Int? the_match_score
    Int? the_mismatch_penalty
    Int? gap_open_penalty
    Int? gap_extend_penalty
    Int? band_width_ksw
    File? path_scoring_matrix
    Boolean? append_cigar_output
    Boolean? append_query_target
    Boolean? add_header_line
    Boolean? rightalign_gaps_ksw
    Boolean? output_offsetandlength_otherwise
    Int? library_type_auto
  }
  command <<<
    ksw \
      ~{if defined(alignment_mode_extend) then ("-M " +  '"' + alignment_mode_extend + '"') else ""} \
      ~{if defined(the_match_score) then ("-a " +  '"' + the_match_score + '"') else ""} \
      ~{if defined(the_mismatch_penalty) then ("-b " +  '"' + the_mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("-q " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extend_penalty) then ("-r " +  '"' + gap_extend_penalty + '"') else ""} \
      ~{if defined(band_width_ksw) then ("-w " +  '"' + band_width_ksw + '"') else ""} \
      ~{if defined(path_scoring_matrix) then ("-m " +  '"' + path_scoring_matrix + '"') else ""} \
      ~{if (append_cigar_output) then "-c" else ""} \
      ~{if (append_query_target) then "-s" else ""} \
      ~{if (add_header_line) then "-H" else ""} \
      ~{if (rightalign_gaps_ksw) then "-R" else ""} \
      ~{if (output_offsetandlength_otherwise) then "-O" else ""} \
      ~{if defined(library_type_auto) then ("-l " +  '"' + library_type_auto + '"') else ""}
  >>>
  parameter_meta {
    alignment_mode_extend: "The alignment mode: 0 - local, 1 - glocal, 2 - extend, 3 - global [0 - local]"
    the_match_score: "The match score (>0) [1]"
    the_mismatch_penalty: "The mismatch penalty (>0) [3]"
    gap_open_penalty: "The gap open penalty (>=0) [5]"
    gap_extend_penalty: "The gap extend penalty (>0) [2]"
    band_width_ksw: "The band width (ksw only) [536870911]"
    path_scoring_matrix: "Path to the scoring matrix (4x4 or 5x5) [None]"
    append_cigar_output: "Append the cigar to the output [false]"
    append_query_target: "Append the query and target to the output [false]"
    add_header_line: "Add a header line to the output [false]"
    rightalign_gaps_ksw: "Right-align gaps (ksw only)[false]"
    output_offsetandlength_otherwise: "Output offset-and-length, otherwise start-and-end (all zero-based)[false]"
    library_type_auto: "The library type: 0 - auto, 1 - ksw2, 2 - parasail [0 - auto]"
  }
  output {
    File out_stdout = stdout()
  }
}