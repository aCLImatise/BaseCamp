version 1.0

task FindAdamHomepy {
  command <<<
    find_adam_home_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}