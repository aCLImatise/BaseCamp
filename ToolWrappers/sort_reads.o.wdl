version 1.0

task SortReadso {
  command <<<
    sort_reads_o
  >>>
  output {
    File out_stdout = stdout()
  }
}