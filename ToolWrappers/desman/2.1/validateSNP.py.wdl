version 1.0

task ValidateSNPpy {
  command <<<
    validateSNP_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}