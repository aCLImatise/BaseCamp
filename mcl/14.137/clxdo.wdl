version 1.0

task Clxdo {
  command <<<
    clxdo
  >>>
  output {
    File out_stdout = stdout()
  }
}