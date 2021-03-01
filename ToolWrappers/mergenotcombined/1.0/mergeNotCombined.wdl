version 1.0

task MergeNotCombined {
  command <<<
    mergeNotCombined
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}