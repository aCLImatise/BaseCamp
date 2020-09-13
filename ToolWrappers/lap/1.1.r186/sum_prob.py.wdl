version 1.0

task SumProbpy {
  input {
    Boolean? threshold
    Boolean? input_file_containing
    Boolean? debug_level
    String cat
    String input_prob
  }
  command <<<
    sum_prob_py \
      ~{cat} \
      ~{input_prob} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (input_file_containing) then "--input" else ""} \
      ~{if (debug_level) then "--debug_level" else ""}
  >>>
  parameter_meta {
    threshold: "any probabilities below this threshold are\\nset to the threshold value. (default 1e-18)"
    input_file_containing: "input file containing probabilities (reads\\nfrom stdin by default)"
    debug_level: "determines how much debug output."
    cat: ""
    input_prob: ""
  }
  output {
    File out_stdout = stdout()
  }
}