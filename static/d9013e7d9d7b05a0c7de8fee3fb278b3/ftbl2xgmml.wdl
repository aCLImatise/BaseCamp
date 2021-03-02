version 1.0

task Ftbl2xgmml {
  command <<<
    ftbl2xgmml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}