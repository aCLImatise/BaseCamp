version 1.0

task Fasta2genefilepl {
  command <<<
    fasta2genefile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}