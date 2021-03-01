version 1.0

task Furename {
  command <<<
    fu_rename
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}