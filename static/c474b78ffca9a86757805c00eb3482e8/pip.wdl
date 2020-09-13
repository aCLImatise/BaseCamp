version 1.0

task Pip {
  command <<<
    pip
  >>>
  output {
    File out_stdout = stdout()
  }
}