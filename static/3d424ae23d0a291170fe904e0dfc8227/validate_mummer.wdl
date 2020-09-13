version 1.0

task ValidateMummer {
  command <<<
    validate_mummer
  >>>
  output {
    File out_stdout = stdout()
  }
}