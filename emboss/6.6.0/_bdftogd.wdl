version 1.0

task Bdftogd {
  command <<<
    _bdftogd
  >>>
  output {
    File out_stdout = stdout()
  }
}