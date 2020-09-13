version 1.0

task LoadArgspl {
  command <<<
    load_args_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}