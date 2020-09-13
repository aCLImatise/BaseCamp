version 1.0

task SonLibTests {
  command <<<
    sonLibTests
  >>>
  output {
    File out_stdout = stdout()
  }
}