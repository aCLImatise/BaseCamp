version 1.0

task Fasta2revcompl {
  command <<<
    fasta2revcom_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}