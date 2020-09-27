version 1.0

task StreamRunTest {
  command <<<
    stream_run_test
  >>>
  output {
    File out_stdout = stdout()
  }
}