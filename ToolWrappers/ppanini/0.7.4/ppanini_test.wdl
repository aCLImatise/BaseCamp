version 1.0

task PpaniniTest {
  command <<<
    ppanini_test
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}