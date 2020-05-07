version 1.0

task CruxXlinkScoreSpectrumCharge state {
  input {
    String? peptidePeptideA
    String? peptidePeptideB
    String? posPosA
    String? posbPosb
    String? linkLinkMass
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-score-spectrum charge state \
      ~{peptidePeptideA} \
      ~{peptidePeptideB} \
      ~{posPosA} \
      ~{posbPosb} \
      ~{linkLinkMass} \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}