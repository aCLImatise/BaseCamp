version 1.0

task Dockerfile {
  command <<<
    Dockerfile_
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}