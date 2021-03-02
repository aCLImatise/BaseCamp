version 1.0

task ValidateMummer {
  command <<<
    validate_mummer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}