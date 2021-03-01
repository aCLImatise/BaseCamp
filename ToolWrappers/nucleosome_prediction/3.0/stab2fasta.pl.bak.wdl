version 1.0

task Stab2fastaplbak {
  command <<<
    stab2fasta_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}