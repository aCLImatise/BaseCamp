version 1.0

task Banner {
  command <<<
    banner
  >>>
  output {
    File out_stdout = stdout()
  }
}