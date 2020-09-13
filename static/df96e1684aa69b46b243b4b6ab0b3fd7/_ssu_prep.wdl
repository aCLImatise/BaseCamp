version 1.0

task Ssuprep {
  command <<<
    _ssu_prep
  >>>
  output {
    File out_stdout = stdout()
  }
}