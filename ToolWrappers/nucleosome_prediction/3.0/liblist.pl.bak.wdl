version 1.0

task Liblistplbak {
  command <<<
    liblist_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}