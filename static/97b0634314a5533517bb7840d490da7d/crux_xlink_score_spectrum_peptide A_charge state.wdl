version 1.0

task CruxXlinkScoreSpectrumPeptide ACharge state {
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
    crux xlink-score-spectrum peptide A charge state \
      ~{peptidePeptideB} \
      ~{posPosA} \
      ~{posbPosb} \
      ~{linkLinkMass} \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}