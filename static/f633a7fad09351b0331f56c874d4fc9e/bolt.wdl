version 1.0

task Bolt {
  command <<<
    bolt
  >>>
  output {
    File out_stdout = stdout()
  }
}