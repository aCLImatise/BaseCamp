version 1.0

task Vidir {
  command <<<
    vidir
  >>>
  output {
    File out_stdout = stdout()
  }
}