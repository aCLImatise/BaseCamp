version 1.0

task Ctg2fasta {
  command <<<
    ctg2fasta
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}