version 1.0

task ValidateBlat {
  command <<<
    validate_blat
  >>>
  output {
    File out_stdout = stdout()
  }
}