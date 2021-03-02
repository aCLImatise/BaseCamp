version 1.0

task RunMultiTest {
  command <<<
    runMultiTest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}