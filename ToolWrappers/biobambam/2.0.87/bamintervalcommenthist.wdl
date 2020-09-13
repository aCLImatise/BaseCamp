version 1.0

task Bamintervalcommenthist {
  command <<<
    bamintervalcommenthist
  >>>
  output {
    File out_stdout = stdout()
  }
}