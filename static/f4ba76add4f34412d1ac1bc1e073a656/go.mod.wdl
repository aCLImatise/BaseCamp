version 1.0

task Gomod {
  command <<<
    go_mod
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}