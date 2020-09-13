version 1.0

task FindAdamHomepy {
  command <<<
    find_adam_home_py
  >>>
  output {
    File out_stdout = stdout()
  }
}