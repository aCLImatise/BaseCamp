version 1.0

task GetfilesToTaxNodes {
  command <<<
    getfilesToTaxNodes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}