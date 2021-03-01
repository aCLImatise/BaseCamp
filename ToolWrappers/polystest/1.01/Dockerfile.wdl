version 1.0

task Dockerfile {
  command <<<
    Dockerfile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}