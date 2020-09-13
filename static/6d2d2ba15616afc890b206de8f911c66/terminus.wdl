version 1.0

task Terminus {
  command <<<
    terminus
  >>>
  output {
    File out_stdout = stdout()
  }
}