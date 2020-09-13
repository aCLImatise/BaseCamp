version 1.0

task Makefile {
  command <<<
    Makefile
  >>>
  output {
    File out_stdout = stdout()
  }
}