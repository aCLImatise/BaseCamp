version 1.0

task Rpsbproc {
  command <<<
    rpsbproc
  >>>
  output {
    File out_stdout = stdout()
  }
}