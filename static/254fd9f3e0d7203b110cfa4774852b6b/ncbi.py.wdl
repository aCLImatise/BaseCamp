version 1.0

task Ncbipy {
  command <<<
    ncbi_py
  >>>
  output {
    File out_stdout = stdout()
  }
}