version 1.0

task Maf2fasta {
  command <<<
    maf2fasta
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}