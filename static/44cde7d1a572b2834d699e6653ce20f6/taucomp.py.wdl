version 1.0

task Taucomppy {
  command <<<
    taucomp_py
  >>>
  output {
    File out_stdout = stdout()
  }
}