version 1.0

task ValidateSNP3py {
  command <<<
    validateSNP3_py
  >>>
  output {
    File out_stdout = stdout()
  }
}