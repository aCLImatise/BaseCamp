version 1.0

task Bsb4 {
  command <<<
    bsb4
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}