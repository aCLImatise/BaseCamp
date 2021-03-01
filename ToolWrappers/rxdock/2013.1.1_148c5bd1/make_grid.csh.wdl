version 1.0

task MakeGridcsh {
  command <<<
    make_grid_csh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}