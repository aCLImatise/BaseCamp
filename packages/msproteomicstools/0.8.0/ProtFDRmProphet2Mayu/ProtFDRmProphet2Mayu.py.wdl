version 1.0

task ProtFDRmProphet2Mayupy {
  command <<<
    ProtFDRmProphet2Mayu_py
  >>>
  output {
    File out_stdout = stdout()
  }
}