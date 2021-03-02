version 1.0

task MergeDepthspl {
  command <<<
    merge_depths_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}