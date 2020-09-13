version 1.0

task MergeMatePairs {
  command <<<
    merge_mate_pairs
  >>>
  output {
    File out_stdout = stdout()
  }
}