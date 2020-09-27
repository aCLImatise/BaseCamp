version 1.0

task Joinpl {
  command <<<
    join_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}