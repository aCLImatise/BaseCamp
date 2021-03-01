version 1.0

task Commandlinesh {
  command <<<
    commandline_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}