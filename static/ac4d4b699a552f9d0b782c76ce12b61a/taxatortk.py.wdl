version 1.0

task Taxatortkpy {
  command <<<
    taxatortk_py
  >>>
  output {
    File out_stdout = stdout()
  }
}