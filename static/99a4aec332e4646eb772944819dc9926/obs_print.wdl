version 1.0

task Obsprint {
  command <<<
    obs_print
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}