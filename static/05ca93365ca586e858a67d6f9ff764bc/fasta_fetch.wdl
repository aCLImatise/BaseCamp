version 1.0

task Fastafetch {
  command <<<
    fasta_fetch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}