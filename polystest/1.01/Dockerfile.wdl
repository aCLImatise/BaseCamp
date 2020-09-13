version 1.0

task Dockerfile {
  command <<<
    Dockerfile
  >>>
  output {
    File out_stdout = stdout()
  }
}