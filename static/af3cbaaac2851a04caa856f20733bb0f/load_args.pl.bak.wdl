version 1.0

task LoadArgsplbak {
  command <<<
    load_args_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}