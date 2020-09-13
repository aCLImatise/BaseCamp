version 1.0

task Optimir {
  command <<<
    optimir
  >>>
  output {
    File out_stdout = stdout()
  }
}