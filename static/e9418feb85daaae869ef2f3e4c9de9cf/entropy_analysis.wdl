version 1.0

task EntropyAnalysis {
  input {
    Boolean uniqueUniqueD
    Boolean weightedWeighted
    Boolean aminoAminoAcidSequences
    Boolean quickQuick
    Boolean noNoDisplay
    String? alignmentAlignment
  }
  command <<<
    entropy-analysis \
      ~{alignmentAlignment} \
      ~{true="--uniqued" false="" uniqueUniqueD} \
      ~{true="--weighted" false="" weightedWeighted} \
      ~{true="--amino-acid-sequences" false="" aminoAminoAcidSequences} \
      ~{true="--quick" false="" quickQuick} \
      ~{true="--no-display" false="" noNoDisplay}
  >>>
}