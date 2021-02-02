version 1.0

task Daisy {
  command <<<
    daisy
  >>>
  output {
    File out_stdout = stdout()
  }
}