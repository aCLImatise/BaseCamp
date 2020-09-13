version 1.0

task Cons2fastapl {
  command <<<
    cons2fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}