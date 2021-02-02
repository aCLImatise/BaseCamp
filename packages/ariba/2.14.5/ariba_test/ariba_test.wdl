version 1.0

task AribaTest {
  command <<<
    ariba test
  >>>
  output {
    File out_stdout = stdout()
  }
}