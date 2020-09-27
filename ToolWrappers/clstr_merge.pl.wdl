version 1.0

task ClstrMergepl {
  command <<<
    clstr_merge_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}