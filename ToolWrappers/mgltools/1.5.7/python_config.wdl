version 1.0

task Pythonconfig {
  command <<<
    python_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}