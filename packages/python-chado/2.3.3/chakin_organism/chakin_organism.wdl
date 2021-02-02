version 1.0

task ChakinOrganism {
  command <<<
    chakin organism
  >>>
  output {
    File out_stdout = stdout()
  }
}