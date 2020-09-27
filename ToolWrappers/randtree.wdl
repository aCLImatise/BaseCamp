version 1.0

task Randtree {
  command <<<
    randtree
  >>>
  output {
    File out_stdout = stdout()
  }
}