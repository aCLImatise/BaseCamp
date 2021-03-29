version 1.0

task Srapileup2 {
  command <<<
    sra_pileup_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}