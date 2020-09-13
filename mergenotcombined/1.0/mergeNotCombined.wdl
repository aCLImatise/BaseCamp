version 1.0

task MergeNotCombined {
  command <<<
    mergeNotCombined
  >>>
  output {
    File out_stdout = stdout()
  }
}