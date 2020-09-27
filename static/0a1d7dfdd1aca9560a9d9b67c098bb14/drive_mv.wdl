version 1.0

task DriveMv {
  command <<<
    drive mv
  >>>
  output {
    File out_stdout = stdout()
  }
}