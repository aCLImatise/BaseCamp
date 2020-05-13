version 1.0

task TreeEventsDlc {
  input {
    Boolean explicitExplicit
    Boolean useUseLocusRecon
  }
  command <<<
    tree-events-dlc \
      ~{true="--explicit" false="" explicitExplicit} \
      ~{true="--use-locus-recon" false="" useUseLocusRecon}
  >>>
}