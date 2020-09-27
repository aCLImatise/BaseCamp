version 1.0

task SamMappl {
  command <<<
    samMap_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}