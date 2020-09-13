version 1.0

task ExpandUniref50pl {
  command <<<
    expand_uniref50_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}