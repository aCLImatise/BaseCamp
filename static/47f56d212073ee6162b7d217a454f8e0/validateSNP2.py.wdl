version 1.0

task ValidateSNP2py {
  command <<<
    validateSNP2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}