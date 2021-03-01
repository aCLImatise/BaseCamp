version 1.0

task SswWrappy {
  command <<<
    ssw_wrap_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}