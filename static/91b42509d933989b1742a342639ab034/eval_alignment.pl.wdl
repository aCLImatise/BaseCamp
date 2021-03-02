version 1.0

task EvalAlignmentpl {
  command <<<
    eval_alignment_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}