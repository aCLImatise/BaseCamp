version 1.0

task Multifastapy {
  command <<<
    multifasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}