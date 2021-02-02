version 1.0

task Splitgl {
  command <<<
    splitgl
  >>>
  output {
    File out_stdout = stdout()
  }
}