version 1.0

task Express {
  command <<<
    express
  >>>
  output {
    File out_stdout = stdout()
  }
}