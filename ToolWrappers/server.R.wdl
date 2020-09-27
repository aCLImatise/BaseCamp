version 1.0

task ServerR {
  command <<<
    server_R
  >>>
  output {
    File out_stdout = stdout()
  }
}