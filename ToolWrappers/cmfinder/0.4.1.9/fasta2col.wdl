version 1.0

task Fasta2col {
  command <<<
    fasta2col
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}