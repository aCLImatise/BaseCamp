version 1.0

task Cmprpl {
  command <<<
    cmpr_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}