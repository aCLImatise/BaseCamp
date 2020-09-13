version 1.0

task JsonXs {
  command <<<
    json_xs
  >>>
  output {
    File out_stdout = stdout()
  }
}