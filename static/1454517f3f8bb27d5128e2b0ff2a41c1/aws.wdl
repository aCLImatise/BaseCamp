version 1.0

task Aws {
  command <<<
    aws
  >>>
  output {
    File out_stdout = stdout()
  }
}