version 1.0

task Libtablepl {
  command <<<
    libtable_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}