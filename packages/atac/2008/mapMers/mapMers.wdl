version 1.0

task MapMers {
  command <<<
    mapMers
  >>>
  output {
    File out_stdout = stdout()
  }
}