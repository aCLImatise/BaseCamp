version 1.0

task Antcmd {
  command <<<
    ant_cmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}