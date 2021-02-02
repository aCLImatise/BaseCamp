version 1.0

task AddLengthspl {
  command <<<
    AddLengths_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}