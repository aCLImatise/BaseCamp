version 1.0

task SliceMercatorAlignment {
  input {
    Boolean halfHalfOpen
    String? genomeGenome
    String? chromosomeChromosome
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_mercator_alignment \
      ~{genomeGenome} \
      ~{true="--halfopen" false="" halfHalfOpen} \
      ~{chromosomeChromosome} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}