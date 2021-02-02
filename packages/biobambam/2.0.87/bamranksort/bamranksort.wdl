version 1.0

task Bamranksort {
  command <<<
    bamranksort
  >>>
  output {
    File out_stdout = stdout()
  }
}