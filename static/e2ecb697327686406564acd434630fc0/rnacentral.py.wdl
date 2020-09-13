version 1.0

task Rnacentralpy {
  command <<<
    rnacentral_py
  >>>
  output {
    File out_stdout = stdout()
  }
}