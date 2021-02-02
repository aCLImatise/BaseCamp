version 1.0

task DemoRegexp {
  command <<<
    demo_regexp
  >>>
  output {
    File out_stdout = stdout()
  }
}