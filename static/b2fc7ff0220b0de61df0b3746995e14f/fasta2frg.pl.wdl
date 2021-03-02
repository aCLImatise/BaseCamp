version 1.0

task Fasta2frgpl {
  command <<<
    fasta2frg_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}