version 1.0

task SonLibFastaCTest {
  command <<<
    sonLib_fastaCTest
  >>>
  output {
    File out_stdout = stdout()
  }
}