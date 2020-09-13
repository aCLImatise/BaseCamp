version 1.0

task Pmstash {
  command <<<
    pm_stash
  >>>
  output {
    File out_stdout = stdout()
  }
}