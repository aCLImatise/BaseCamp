version 1.0

task UpdateAliaspy {
  command <<<
    update_alias_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}