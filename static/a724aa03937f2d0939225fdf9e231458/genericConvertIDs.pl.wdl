version 1.0

task GenericConvertIDspl {
  command <<<
    genericConvertIDs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}