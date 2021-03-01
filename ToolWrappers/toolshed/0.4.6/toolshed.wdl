version 1.0

task Toolshed {
  command <<<
    toolshed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}