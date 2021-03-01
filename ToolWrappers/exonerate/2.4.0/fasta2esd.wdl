version 1.0

task Fasta2esd {
  command <<<
    fasta2esd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}