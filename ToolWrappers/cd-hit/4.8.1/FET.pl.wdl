version 1.0

task FETpl {
  command <<<
    FET_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}