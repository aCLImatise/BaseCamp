version 1.0

task GoalignTestsh {
  command <<<
    goalign_test_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}