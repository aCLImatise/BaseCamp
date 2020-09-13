version 1.0

task Flapjack {
  command <<<
    flapjack
  >>>
  output {
    File out_stdout = stdout()
  }
}