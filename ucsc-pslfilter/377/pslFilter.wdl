version 1.0

task PslFilter {
  input {
    Boolean? dir
    Int? reward
    Int? cost
    Int? gap_open_cost
    Float? gap_size_log_mod
    Int? min_score
    Int? min_match
    Boolean? min_unique_match
    Boolean? max_bad_ppt
    Boolean? min_ali
    Boolean? no_head
    Boolean? minal_it
  }
  command <<<
    pslFilter \
      ~{if (dir) then "-dir" else ""} \
      ~{if defined(reward) then ("-reward " +  '"' + reward + '"') else ""} \
      ~{if defined(cost) then ("-cost " +  '"' + cost + '"') else ""} \
      ~{if defined(gap_open_cost) then ("-gapOpenCost " +  '"' + gap_open_cost + '"') else ""} \
      ~{if defined(gap_size_log_mod) then ("-gapSizeLogMod " +  '"' + gap_size_log_mod + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_match) then ("-minMatch " +  '"' + min_match + '"') else ""} \
      ~{if (min_unique_match) then "-minUniqueMatch" else ""} \
      ~{if (max_bad_ppt) then "-maxBadPpt" else ""} \
      ~{if (min_ali) then "-minAli" else ""} \
      ~{if (no_head) then "-noHead" else ""} \
      ~{if (minal_it) then "-minAliT" else ""}
  >>>
  parameter_meta {
    dir: "Input files are directories rather than single files"
    reward: "(default 1) Bonus to score for match"
    cost: "(default 1) Penalty to score for mismatch"
    gap_open_cost: "(default 4) Penalty for gap opening"
    gap_size_log_mod: "(default 1.00) Penalty for gap sizes"
    min_score: "(default 15) Minimum score to pass filter"
    min_match: "(default 30) Min match (including repeats to pass)"
    min_unique_match: "(default 20) Min non-repeats to pass)"
    max_bad_ppt: "(default 700) Maximum divergence in parts per thousand"
    min_ali: "(default 600) Minimum ratio query in alignment in ppt"
    no_head: "Don't output psl header"
    minal_it: "(default 0) Like minAli for target"
  }
  output {
    File out_stdout = stdout()
  }
}