version 1.0

task Jasmine {
  command <<<
    jasmine
  >>>
  output {
    File out_stdout = stdout()
  }
}