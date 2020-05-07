version 1.0

task CruxXlinkScoreSpectrumPeptide AScan number {
  input {
    String? peptidePeptideB
    String? posPosA
    String? posbPosb
    String? linkLinkMass
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-score-spectrum peptide A scan number \
      ~{peptidePeptideB} \
      ~{posPosA} \
      ~{posbPosb} \
      ~{linkLinkMass} \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}