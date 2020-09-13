version 1.0

task Agp2amos {
  command <<<
    agp2amos
  >>>
  output {
    File out_stdout = stdout()
  }
}