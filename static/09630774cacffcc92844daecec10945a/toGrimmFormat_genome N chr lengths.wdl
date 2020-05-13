version 1.0

task ToGrimmFormatGenome N chr lengths {
  input {
    String? mauveMauveAlignment
    String? genomeGenomeNchrLengths
  }
  command <<<
    toGrimmFormat genome N chr lengths \
      ~{mauveMauveAlignment} \
      ~{genomeGenomeNchrLengths}
  >>>
}