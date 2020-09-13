version 1.0

task Kmerstats {
  command <<<
    kmerstats
  >>>
  output {
    File out_stdout = stdout()
  }
}