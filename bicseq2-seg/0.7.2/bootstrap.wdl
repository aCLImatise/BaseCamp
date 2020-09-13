version 1.0

task Bootstrap {
  command <<<
    bootstrap
  >>>
  output {
    File out_stdout = stdout()
  }
}