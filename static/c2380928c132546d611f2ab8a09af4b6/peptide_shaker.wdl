version 1.0

task Peptideshaker {
  command <<<
    peptide_shaker
  >>>
  runtime {
    docker: "quay.io/biocontainers/peptide-shaker:2.0.15--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}