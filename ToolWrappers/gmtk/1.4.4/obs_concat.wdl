version 1.0

task Obsconcat {
  command <<<
    obs_concat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}