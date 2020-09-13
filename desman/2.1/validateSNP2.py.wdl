version 1.0

task ValidateSNP2py {
  command <<<
    validateSNP2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}