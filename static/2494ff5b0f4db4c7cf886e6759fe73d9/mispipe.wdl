version 1.0

task Mispipe {
  command <<<
    mispipe
  >>>
  output {
    File out_stdout = stdout()
  }
}