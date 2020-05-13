version 1.0

task WriteStrainFasta.pyOutbase {
  input {
    String? fastFastA
    String? tauTauStarFile
    String? etEtAsFile
    String? outOutBase
  }
  command <<<
    write_strain_fasta.py outbase \
      ~{fastFastA} \
      ~{tauTauStarFile} \
      ~{etEtAsFile} \
      ~{outOutBase}
  >>>
}