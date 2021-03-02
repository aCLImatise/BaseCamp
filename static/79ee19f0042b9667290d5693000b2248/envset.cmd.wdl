version 1.0

task Envsetcmd {
  command <<<
    envset_cmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}