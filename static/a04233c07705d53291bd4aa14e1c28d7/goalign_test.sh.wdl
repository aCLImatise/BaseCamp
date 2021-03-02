version 1.0

task GoalignTestsh {
  command <<<
    goalign_test_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}