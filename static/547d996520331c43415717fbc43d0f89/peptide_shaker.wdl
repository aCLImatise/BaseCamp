version 1.0

task Peptideshaker {
  command <<<
    peptide_shaker
  >>>
  runtime {
    docker: "quay.io/biocontainers/peptide-shaker:2.0.18--h779adbc_1"
  }
  output {
    File out_stdout = stdout()
  }
}