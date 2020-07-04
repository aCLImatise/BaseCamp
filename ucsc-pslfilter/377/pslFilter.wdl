version 1.0

task PslFilter {
  input {
    Boolean? dir
    String? reward
    String? cost
    String? gap_open_cost
    String? gap_size_log_mod
    String? min_score
    String? min_match
    Boolean? min_unique_match
    Boolean? max_bad_ppt
    Boolean? min_ali
    Boolean? no_head
    Boolean? minal_it
  }
  command <<<
    pslFilter \
      ~{true="-dir" false="" dir} \
      ~{if defined(reward) then ("-reward " +  '"' + reward + '"') else ""} \
      ~{if defined(cost) then ("-cost " +  '"' + cost + '"') else ""} \
      ~{if defined(gap_open_cost) then ("-gapOpenCost " +  '"' + gap_open_cost + '"') else ""} \
      ~{if defined(gap_size_log_mod) then ("-gapSizeLogMod " +  '"' + gap_size_log_mod + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_match) then ("-minMatch " +  '"' + min_match + '"') else ""} \
      ~{true="-minUniqueMatch" false="" min_unique_match} \
      ~{true="-maxBadPpt" false="" max_bad_ppt} \
      ~{true="-minAli" false="" min_ali} \
      ~{true="-noHead" false="" no_head} \
      ~{true="-minAliT" false="" minal_it}
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
}