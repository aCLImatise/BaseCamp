version 1.0

task Fileinfo {
  command <<<
    fileinfo
  >>>
  output {
    File out_stdout = stdout()
  }
}