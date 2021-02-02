version 1.0

task LDApy {
  command <<<
    LDA_py
  >>>
  output {
    File out_stdout = stdout()
  }
}