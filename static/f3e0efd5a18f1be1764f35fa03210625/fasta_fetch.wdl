version 1.0

task Fastafetch {
  command <<<
    fasta_fetch
  >>>
  output {
    File out_stdout = stdout()
  }
}