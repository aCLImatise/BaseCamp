version 1.0

task B2ct {
  command <<<
    b2ct
  >>>
  output {
    File out_stdout = stdout()
  }
}