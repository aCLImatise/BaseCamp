version 1.0

task ReadMergerpl {
  command <<<
    read_merger_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}