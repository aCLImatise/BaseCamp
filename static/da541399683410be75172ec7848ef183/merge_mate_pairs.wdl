version 1.0

task MergeMatePairs {
  command <<<
    merge_mate_pairs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}