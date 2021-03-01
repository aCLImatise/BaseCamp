version 1.0

task SortReadso {
  command <<<
    sort_reads_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}