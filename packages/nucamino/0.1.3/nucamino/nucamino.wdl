version 1.0

task Nucamino {
  command <<<
    nucamino
  >>>
  output {
    File out_stdout = stdout()
  }
}