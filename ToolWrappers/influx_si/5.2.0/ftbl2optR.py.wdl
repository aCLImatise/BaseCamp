version 1.0

task Ftbl2optRpy {
  command <<<
    ftbl2optR_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}