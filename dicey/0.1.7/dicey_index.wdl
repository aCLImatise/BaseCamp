version 1.0

task DiceyIndex {
  input {
    Boolean oO
    String? optionsOptions
    String? genomeGenomeFagZ
  }
  command <<<
    dicey index \
      ~{optionsOptions} \
      ~{true="-o" false="" oO} \
      ~{genomeGenomeFagZ}
  >>>
}