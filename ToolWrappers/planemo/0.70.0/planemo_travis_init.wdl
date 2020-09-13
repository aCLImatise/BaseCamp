version 1.0

task PlanemoTravisInit {
  command <<<
    planemo travis_init
  >>>
  output {
    File out_stdout = stdout()
  }
}