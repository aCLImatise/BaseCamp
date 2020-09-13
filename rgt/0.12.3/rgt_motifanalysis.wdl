version 1.0

task Rgtmotifanalysis {
  command <<<
    rgt_motifanalysis
  >>>
  output {
    File out_stdout = stdout()
  }
}