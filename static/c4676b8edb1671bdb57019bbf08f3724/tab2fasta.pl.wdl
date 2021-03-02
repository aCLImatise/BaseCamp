version 1.0

task Tab2fastapl {
  command <<<
    tab2fasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}