version 1.0

task PreTA {
  command <<<
    preTA
  >>>
  output {
    File out_stdout = stdout()
  }
}