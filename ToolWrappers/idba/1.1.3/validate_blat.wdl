version 1.0

task ValidateBlat {
  command <<<
    validate_blat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}