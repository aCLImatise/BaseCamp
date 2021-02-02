version 1.0

task HaystackRunTest {
  command <<<
    haystack_run_test
  >>>
  output {
    File out_stdout = stdout()
  }
}