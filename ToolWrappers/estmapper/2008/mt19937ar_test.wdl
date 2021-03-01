version 1.0

task Mt19937artest {
  command <<<
    mt19937ar_test
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}