version 1.0

task SplitMatePairs {
  command <<<
    split_mate_pairs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}