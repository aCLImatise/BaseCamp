version 1.0

task DriveMd5sum {
  command <<<
    drive md5sum
  >>>
  output {
    File out_stdout = stdout()
  }
}