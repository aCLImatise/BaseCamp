version 1.0

task ValidateSNPpy {
  command <<<
    validateSNP_py
  >>>
  output {
    File out_stdout = stdout()
  }
}