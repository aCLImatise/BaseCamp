version 1.0

task ServerR {
  command <<<
    server_R_
  >>>
  output {
    File out_stdout = stdout()
  }
}