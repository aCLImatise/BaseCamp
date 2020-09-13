version 1.0

task Blacklist {
  command <<<
    Blacklist
  >>>
  output {
    File out_stdout = stdout()
  }
}