version 1.0

task JsonPp {
  command <<<
    json_pp
  >>>
  output {
    File out_stdout = stdout()
  }
}