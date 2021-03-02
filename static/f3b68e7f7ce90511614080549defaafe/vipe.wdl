version 1.0

task Vipe {
  command <<<
    vipe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}