version 1.0

task Ljresidn {
  command <<<
    ljresidn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}