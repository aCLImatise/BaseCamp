version 1.0

task FEWpl {
  command <<<
    FEW_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}