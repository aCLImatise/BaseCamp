version 1.0

task Chronic {
  command <<<
    chronic
  >>>
  output {
    File out_stdout = stdout()
  }
}