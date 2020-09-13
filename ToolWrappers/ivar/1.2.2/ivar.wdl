version 1.0

task Ivar {
  command <<<
    ivar
  >>>
  output {
    File out_stdout = stdout()
  }
}