version 1.0

task WriteStrainFastapy {
  command <<<
    write_strain_fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}