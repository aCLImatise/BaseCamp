version 1.0

task SumProb.py {
  input {
    Boolean? threshold
    Boolean? input_file_containing
    Boolean? debug_level
    String cat
    String input_prob
  }
  command <<<
    sum_prob.py \
      ~{cat} \
      ~{input_prob} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--input" false="" input_file_containing} \
      ~{true="--debug_level" false="" debug_level}
  >>>
  parameter_meta {
    threshold: "any probabilities below this threshold are set to the threshold value. (default 1e-18)"
    input_file_containing: "input file containing probabilities (reads  from stdin by default)"
    debug_level: "determines how much debug output."
    cat: ""
    input_prob: ""
  }
}