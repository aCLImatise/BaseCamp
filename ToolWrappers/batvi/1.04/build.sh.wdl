version 1.0

task Buildsh {
  command <<<
    build_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}