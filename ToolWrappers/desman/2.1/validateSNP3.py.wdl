version 1.0

task ValidateSNP3py {
  command <<<
    validateSNP3_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}