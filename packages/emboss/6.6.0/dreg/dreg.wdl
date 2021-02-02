version 1.0

task Dreg {
  command <<<
    dreg
  >>>
  output {
    File out_stdout = stdout()
  }
}