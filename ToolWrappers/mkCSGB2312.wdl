version 1.0

task MkCSGB2312 {
  command <<<
    mkCSGB2312
  >>>
  output {
    File out_stdout = stdout()
  }
}