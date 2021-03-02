version 1.0

task Misp {
  command <<<
    misp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}