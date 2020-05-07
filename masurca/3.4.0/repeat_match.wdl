version 1.0

task RepeatMatch {
  input {
    Boolean eE
    Boolean fF
    Boolean nN
    Boolean tT
    Boolean vV
    String? genomeGenomeFile
  }
  command <<<
    repeat-match \
      ~{genomeGenomeFile} \
      ~{true="-E" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-n" false="" nN} \
      ~{true="-t" false="" tT} \
      ~{true="-V" false="" vV}
  >>>
}