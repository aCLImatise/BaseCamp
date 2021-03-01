version 1.0

task Fasta2tabpl {
  command <<<
    fasta2tab_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}