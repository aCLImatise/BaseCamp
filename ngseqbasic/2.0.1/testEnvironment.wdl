version 1.0

task TestEnvironment {
  command <<<
    testEnvironment
  >>>
  output {
    File out_stdout = stdout()
  }
}