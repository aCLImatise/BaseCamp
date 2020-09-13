version 1.0

task Geo2fastapl {
  command <<<
    geo2fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}