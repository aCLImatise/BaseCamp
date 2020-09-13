version 1.0

task SummarizeMultiTest {
  command <<<
    summarizeMultiTest
  >>>
  output {
    File out_stdout = stdout()
  }
}