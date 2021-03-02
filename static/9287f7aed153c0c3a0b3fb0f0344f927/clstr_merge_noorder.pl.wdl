version 1.0

task ClstrMergeNoorderpl {
  command <<<
    clstr_merge_noorder_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}