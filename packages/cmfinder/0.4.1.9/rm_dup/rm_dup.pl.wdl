version 1.0

task RmDuppl {
  command <<<
    rm_dup_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}