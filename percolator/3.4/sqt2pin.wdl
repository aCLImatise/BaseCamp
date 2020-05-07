version 1.0

task Sqt2pin {
  input {
    Boolean enzymeEnzyme
    Boolean maxMaxMass
    String? targetsTargetsQt
    String? decoysDecoysQt
  }
  command <<<
    sqt2pin \
      ~{targetsTargetsQt} \
      ~{true="--enzyme" false="" enzymeEnzyme} \
      ~{true="--max-mass" false="" maxMaxMass} \
      ~{decoysDecoysQt}
  >>>
}