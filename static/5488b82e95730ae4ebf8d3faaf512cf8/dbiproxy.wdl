version 1.0

task Dbiproxy {
  command <<<
    dbiproxy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}