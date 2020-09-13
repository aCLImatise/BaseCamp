version 1.0

task Treeass {
  command <<<
    treeass
  >>>
  output {
    File out_stdout = stdout()
  }
}