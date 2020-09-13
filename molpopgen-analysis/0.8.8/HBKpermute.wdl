version 1.0

task HBKpermute {
  command <<<
    HBKpermute
  >>>
  output {
    File out_stdout = stdout()
  }
}