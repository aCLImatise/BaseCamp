version 1.0

task MergeDepthspl {
  command <<<
    merge_depths_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}