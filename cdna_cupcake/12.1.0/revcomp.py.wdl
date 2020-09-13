version 1.0

task Revcomppy {
  command <<<
    revcomp_py
  >>>
  output {
    File out_stdout = stdout()
  }
}