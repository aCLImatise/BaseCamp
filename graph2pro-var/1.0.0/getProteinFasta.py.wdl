version 1.0

task GetProteinFastapy {
  command <<<
    getProteinFasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}