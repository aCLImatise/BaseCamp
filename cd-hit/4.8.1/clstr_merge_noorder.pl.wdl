version 1.0

task ClstrMergeNoorderpl {
  command <<<
    clstr_merge_noorder_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}