version 1.0

task Msgf2pin {
  input {
    Boolean enzymeEnzyme
    Boolean maxMaxMass
    String? targetTargetMzId
    String? decoyDecoyMzId
  }
  command <<<
    msgf2pin \
      ~{targetTargetMzId} \
      ~{true="--enzyme" false="" enzymeEnzyme} \
      ~{true="--max-mass" false="" maxMaxMass} \
      ~{decoyDecoyMzId}
  >>>
}