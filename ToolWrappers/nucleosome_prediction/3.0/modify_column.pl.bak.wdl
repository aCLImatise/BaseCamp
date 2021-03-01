version 1.0

task ModifyColumnplbak {
  command <<<
    modify_column_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}