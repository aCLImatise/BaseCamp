version 1.0

task Xbuild {
  command <<<
    xbuild
  >>>
  output {
    File out_stdout = stdout()
  }
}