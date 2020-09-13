version 1.0

task Alfred {
  command <<<
    alfred
  >>>
  output {
    File out_stdout = stdout()
  }
}