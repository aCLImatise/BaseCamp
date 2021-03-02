version 1.0

task Joinplbak {
  command <<<
    join_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}