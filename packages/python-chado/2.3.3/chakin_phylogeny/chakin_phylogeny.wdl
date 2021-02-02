version 1.0

task ChakinPhylogeny {
  command <<<
    chakin phylogeny
  >>>
  output {
    File out_stdout = stdout()
  }
}