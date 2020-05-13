version 1.0

task TracyIndex {
  input {
    Boolean oO
    String? optionsOptions
    String? genomeGenomeFagZ
  }
  command <<<
    tracy index \
      ~{optionsOptions} \
      ~{true="-o" false="" oO} \
      ~{genomeGenomeFagZ}
  >>>
}