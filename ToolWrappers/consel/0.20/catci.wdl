version 1.0

task Catci {
  command <<<
    catci
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}