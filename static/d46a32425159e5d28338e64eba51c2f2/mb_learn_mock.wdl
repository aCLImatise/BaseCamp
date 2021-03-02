version 1.0

task Mblearnmock {
  command <<<
    mb_learn_mock
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}