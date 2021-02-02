version 1.0

task TomboFilter {
  command <<<
    tombo filter
  >>>
  output {
    File out_stdout = stdout()
  }
}