version 1.0

task ProtFDRTraML2Fastapy {
  command <<<
    ProtFDRTraML2Fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}