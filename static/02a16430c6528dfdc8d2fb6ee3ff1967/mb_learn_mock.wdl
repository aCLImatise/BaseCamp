version 1.0

task Mblearnmock {
  command <<<
    mb_learn_mock
  >>>
  output {
    File out_stdout = stdout()
  }
}