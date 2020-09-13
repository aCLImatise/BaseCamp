version 1.0

task EvalAlignmentpl {
  command <<<
    eval_alignment_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}