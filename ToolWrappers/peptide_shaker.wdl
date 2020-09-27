version 1.0

task Peptideshaker {
  command <<<
    peptide_shaker
  >>>
  output {
    File out_stdout = stdout()
  }
}