version 1.0

task AggregateScoresInIntervals.py {
  input {
    Boolean? binned
    String? mask
    String score_file
    Int interval_file
    String? out_file
  }
  command <<<
    aggregate_scores_in_intervals.py \
      ~{score_file} \
      ~{interval_file} \
      ~{out_file} \
      ~{true="--binned" false="" binned} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""}
  >>>
  parameter_meta {
    binned: "'score_file' is actually a directory of binned array files"
    mask: "bed file containing regions not to consider valid"
    score_file: ""
    interval_file: ""
    out_file: ""
  }
}