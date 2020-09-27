version 1.0

task Users {
  command <<<
    users
  >>>
  output {
    File out_stdout = stdout()
  }
}