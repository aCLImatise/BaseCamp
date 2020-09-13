version 1.0

task Collectstats {
  command <<<
    collectstats
  >>>
  output {
    File out_stdout = stdout()
  }
}