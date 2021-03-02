version 1.0

task FastaProtCheckerpl {
  command <<<
    fasta_prot_checker_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}