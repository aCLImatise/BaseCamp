version 1.0

task Obscat {
  command <<<
    obs_cat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}