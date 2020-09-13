version 1.0

task Md5sumlite {
  command <<<
    md5sum_lite
  >>>
  output {
    File out_stdout = stdout()
  }
}