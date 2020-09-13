version 1.0

task Spadeshammer {
  command <<<
    spades_hammer
  >>>
  output {
    File out_stdout = stdout()
  }
}