version 1.0

task Bammapdist {
  command <<<
    bammapdist
  >>>
  output {
    File out_stdout = stdout()
  }
}