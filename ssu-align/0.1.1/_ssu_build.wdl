version 1.0

task Ssubuild {
  command <<<
    _ssu_build
  >>>
  output {
    File out_stdout = stdout()
  }
}