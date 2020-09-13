version 1.0

task Infobase {
  command <<<
    infobase
  >>>
  output {
    File out_stdout = stdout()
  }
}