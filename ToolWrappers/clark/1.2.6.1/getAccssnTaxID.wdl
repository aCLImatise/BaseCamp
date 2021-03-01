version 1.0

task GetAccssnTaxID {
  command <<<
    getAccssnTaxID
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}