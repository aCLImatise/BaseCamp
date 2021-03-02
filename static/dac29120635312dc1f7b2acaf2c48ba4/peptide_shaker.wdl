version 1.0

task Peptideshaker {
  command <<<
    peptide_shaker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}