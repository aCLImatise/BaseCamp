version 1.0

task Pandaxs {
  command <<<
    pandaxs
  >>>
  output {
    File out_stdout = stdout()
  }
}