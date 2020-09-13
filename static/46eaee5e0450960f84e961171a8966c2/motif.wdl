version 1.0

task Motif {
  command <<<
    motif
  >>>
  output {
    File out_stdout = stdout()
  }
}