version 1.0

task Gccontent {
  command <<<
    gccontent
  >>>
  output {
    File out_stdout = stdout()
  }
}