version 1.0

task Bamchecksort {
  command <<<
    bamchecksort
  >>>
  output {
    File out_stdout = stdout()
  }
}