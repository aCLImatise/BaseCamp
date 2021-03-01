version 1.0

task Toolspy {
  command <<<
    tools_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}