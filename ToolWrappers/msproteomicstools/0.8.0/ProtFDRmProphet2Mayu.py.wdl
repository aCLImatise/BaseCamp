version 1.0

task ProtFDRmProphet2Mayupy {
  command <<<
    ProtFDRmProphet2Mayu_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}