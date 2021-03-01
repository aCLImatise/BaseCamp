version 1.0

task GetTestDataR {
  command <<<
    get_test_data_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}