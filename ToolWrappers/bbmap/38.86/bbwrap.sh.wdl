version 1.0

task Bbwrapsh {
  command <<<
    bbwrap_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}