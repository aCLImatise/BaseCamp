version 1.0

task GetTestDataR {
  command <<<
    get_test_data_R
  >>>
  output {
    File out_stdout = stdout()
  }
}