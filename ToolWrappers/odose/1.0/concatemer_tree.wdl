version 1.0

task ConcatemerTree {
  command <<<
    concatemer_tree
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}