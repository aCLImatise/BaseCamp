version 1.0

task Watchmedo {
  command <<<
    watchmedo
  >>>
  output {
    File out_stdout = stdout()
  }
}