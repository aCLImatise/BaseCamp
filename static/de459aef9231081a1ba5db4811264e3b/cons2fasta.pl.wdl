version 1.0

task Cons2fastapl {
  command <<<
    cons2fasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}