version 1.0

task UpdateBlastdbplbak {
  command <<<
    update_blastdb_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}