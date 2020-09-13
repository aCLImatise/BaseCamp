version 1.0

task Spadesionhammer {
  command <<<
    spades_ionhammer
  >>>
  output {
    File out_stdout = stdout()
  }
}