version 1.0

task Ftbl2xgmmlpy {
  command <<<
    ftbl2xgmml_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}