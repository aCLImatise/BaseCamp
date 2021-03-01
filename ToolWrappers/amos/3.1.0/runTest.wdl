version 1.0

task RunTest {
  command <<<
    runTest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}