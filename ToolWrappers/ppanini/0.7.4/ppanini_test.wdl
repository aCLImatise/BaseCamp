version 1.0

task PpaniniTest {
  command <<<
    ppanini_test
  >>>
  output {
    File out_stdout = stdout()
  }
}