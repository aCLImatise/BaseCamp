version 1.0

task Obsinfo {
  command <<<
    obs_info
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}