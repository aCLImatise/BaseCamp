version 1.0

task Libtableplbak {
  command <<<
    libtable_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}