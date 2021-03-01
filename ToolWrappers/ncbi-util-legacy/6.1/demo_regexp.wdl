version 1.0

task DemoRegexp {
  command <<<
    demo_regexp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}