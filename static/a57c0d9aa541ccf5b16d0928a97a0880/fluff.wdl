version 1.0

task Fluff {
  command <<<
    fluff
  >>>
  output {
    File out_stdout = stdout()
  }
}