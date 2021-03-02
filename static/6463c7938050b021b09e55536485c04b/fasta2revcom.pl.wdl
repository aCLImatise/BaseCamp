version 1.0

task Fasta2revcompl {
  command <<<
    fasta2revcom_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}