version 1.0

task Treestat {
  command <<<
    treestat
  >>>
  output {
    File out_stdout = stdout()
  }
}