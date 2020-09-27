version 1.0

task CARNACToFasta {
  command <<<
    CARNAC_to_fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}