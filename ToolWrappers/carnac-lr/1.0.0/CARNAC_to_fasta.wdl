version 1.0

task CARNACToFasta {
  command <<<
    CARNAC_to_fasta
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}