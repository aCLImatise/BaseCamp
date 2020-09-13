version 1.0

task Pythonconfig {
  command <<<
    python_config
  >>>
  output {
    File out_stdout = stdout()
  }
}