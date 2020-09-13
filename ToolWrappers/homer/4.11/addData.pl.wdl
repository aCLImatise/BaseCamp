version 1.0

task AddDatapl {
  command <<<
    addData_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}