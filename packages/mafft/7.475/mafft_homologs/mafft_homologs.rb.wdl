version 1.0

task Maffthomologsrb {
  command <<<
    mafft_homologs_rb
  >>>
  runtime {
    docker: "quay.io/biocontainers/mafft:7.475--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}