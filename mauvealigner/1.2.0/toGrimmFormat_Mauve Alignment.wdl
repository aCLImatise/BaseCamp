version 1.0

task ToGrimmFormatMauve Alignment {
  input {
    String? genomeGenomeNchrLengths
  }
  command <<<
    toGrimmFormat Mauve Alignment \
      ~{genomeGenomeNchrLengths}
  >>>
}