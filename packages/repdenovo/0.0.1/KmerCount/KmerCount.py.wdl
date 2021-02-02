version 1.0

task KmerCountpy {
  command <<<
    KmerCount_py
  >>>
  output {
    File out_stdout = stdout()
  }
}