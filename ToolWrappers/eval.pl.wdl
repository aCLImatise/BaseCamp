version 1.0

task Evalpl {
  command <<<
    eval_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}