version 1.0

task Clairpy {
  command <<<
    clair_py
  >>>
  output {
    File out_stdout = stdout()
  }
}