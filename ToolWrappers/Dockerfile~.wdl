version 1.0

task Dockerfile {
  command <<<
    Dockerfile_
  >>>
  output {
    File out_stdout = stdout()
  }
}