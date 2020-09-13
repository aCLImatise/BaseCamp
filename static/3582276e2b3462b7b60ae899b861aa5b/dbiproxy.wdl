version 1.0

task Dbiproxy {
  command <<<
    dbiproxy
  >>>
  output {
    File out_stdout = stdout()
  }
}