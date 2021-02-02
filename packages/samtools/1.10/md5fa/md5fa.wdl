version 1.0

task Md5fa {
  command <<<
    md5fa
  >>>
  output {
    File out_stdout = stdout()
  }
}