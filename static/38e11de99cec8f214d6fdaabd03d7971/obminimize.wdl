version 1.0

task Obminimize {
  command <<<
    obminimize
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}