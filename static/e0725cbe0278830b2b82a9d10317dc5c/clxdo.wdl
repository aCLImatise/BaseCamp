version 1.0

task Clxdo {
  command <<<
    clxdo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}