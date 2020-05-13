version 1.0

task FindPositionsUsed.pl {
  input {
    Boolean coreCorePos
    Boolean badBadPos
    Boolean tabTab
    Boolean referenceReference
    String? chromosomeChromosome
  }
  command <<<
    find-positions-used.pl \
      ~{chromosomeChromosome} \
      ~{true="--core-pos" false="" coreCorePos} \
      ~{true="--bad-pos" false="" badBadPos} \
      ~{true="--tab" false="" tabTab} \
      ~{true="--reference" false="" referenceReference}
  >>>
}