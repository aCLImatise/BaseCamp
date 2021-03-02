version 1.0

task ExpandUniref50pl {
  command <<<
    expand_uniref50_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}