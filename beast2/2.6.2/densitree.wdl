version 1.0

task Densitree {
  command <<<
    densitree
  >>>
  output {
    File out_stdout = stdout()
  }
}