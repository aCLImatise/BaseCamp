version 1.0

task Evalpl {
  command <<<
    eval_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}