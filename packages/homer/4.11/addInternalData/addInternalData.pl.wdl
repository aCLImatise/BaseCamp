version 1.0

task AddInternalDatapl {
  command <<<
    addInternalData_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}