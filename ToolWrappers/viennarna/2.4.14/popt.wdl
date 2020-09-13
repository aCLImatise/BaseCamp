version 1.0

task Popt {
  command <<<
    popt
  >>>
  output {
    File out_stdout = stdout()
  }
}