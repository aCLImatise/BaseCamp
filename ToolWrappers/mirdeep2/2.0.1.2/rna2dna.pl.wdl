version 1.0

task Rna2dnapl {
  command <<<
    rna2dna_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}