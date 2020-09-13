version 1.0

task ConcatemerTree {
  command <<<
    concatemer_tree
  >>>
  output {
    File out_stdout = stdout()
  }
}