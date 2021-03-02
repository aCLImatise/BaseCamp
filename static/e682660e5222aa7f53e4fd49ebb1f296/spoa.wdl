version 1.0

task Spoa {
  input {
    Int? default_score_matching
    Int? default_score_mismatching
    Int? default_gap_opening_penalty_be
    Int? default_gap_extension_penalty_be
    Int? default_gap_opening_penalty_second
    Int? default_gap_extension_penalty_second
    Int? algorithm
    Int? result
    File? dot
  }
  command <<<
    spoa \
      ~{if defined(default_score_matching) then ("-m " +  '"' + default_score_matching + '"') else ""} \
      ~{if defined(default_score_mismatching) then ("-n " +  '"' + default_score_mismatching + '"') else ""} \
      ~{if defined(default_gap_opening_penalty_be) then ("-g " +  '"' + default_gap_opening_penalty_be + '"') else ""} \
      ~{if defined(default_gap_extension_penalty_be) then ("-e " +  '"' + default_gap_extension_penalty_be + '"') else ""} \
      ~{if defined(default_gap_opening_penalty_second) then ("-q " +  '"' + default_gap_opening_penalty_second + '"') else ""} \
      ~{if defined(default_gap_extension_penalty_second) then ("-c " +  '"' + default_gap_extension_penalty_second + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(result) then ("--result " +  '"' + result + '"') else ""} \
      ~{if defined(dot) then ("--dot " +  '"' + dot + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    default_score_matching: "default: 5\\nscore for matching bases"
    default_score_mismatching: "default: -4\\nscore for mismatching bases"
    default_gap_opening_penalty_be: "default: -8\\ngap opening penalty (must be non-positive)"
    default_gap_extension_penalty_be: "default: -6\\ngap extension penalty (must be non-positive)"
    default_gap_opening_penalty_second: "default: -10\\ngap opening penalty of the second affine function\\n(must be non-positive)"
    default_gap_extension_penalty_second: "default: -4\\ngap extension penalty of the second affine function\\n(must be non-positive)"
    algorithm: "default: 0\\nalignment mode:\\n0 - local (Smith-Waterman)\\n1 - global (Needleman-Wunsch)\\n2 - semi-global"
    result: "default: 0\\nresult mode:\\n0 - consensus\\n1 - multiple sequence alignment\\n2 - 0 & 1"
    dot: "output file for the final POA graph in DOT format"
  }
  output {
    File out_stdout = stdout()
    File out_dot = "${in_dot}"
  }
}