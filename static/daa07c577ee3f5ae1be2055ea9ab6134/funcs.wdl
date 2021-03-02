version 1.0

task Funcs {
  command <<<
    funcs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}