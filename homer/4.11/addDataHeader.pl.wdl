version 1.0

task AddDataHeaderpl {
  command <<<
    addDataHeader_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}