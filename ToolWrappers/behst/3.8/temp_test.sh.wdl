version 1.0

task TempTestsh {
  command <<<
    temp_test_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}