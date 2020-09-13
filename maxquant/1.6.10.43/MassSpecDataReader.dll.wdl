version 1.0

task MassSpecDataReaderdll {
  command <<<
    MassSpecDataReader_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}