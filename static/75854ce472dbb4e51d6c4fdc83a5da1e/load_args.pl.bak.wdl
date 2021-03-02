version 1.0

task LoadArgsplbak {
  command <<<
    load_args_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}