version 1.0

task MergeMerBlasts {
  command <<<
    mergeMerBlasts
  >>>
  output {
    File out_stdout = stdout()
  }
}