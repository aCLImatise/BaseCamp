version 1.0

task DrawtreeR {
  command <<<
    drawtree_R
  >>>
  output {
    File out_stdout = stdout()
  }
}