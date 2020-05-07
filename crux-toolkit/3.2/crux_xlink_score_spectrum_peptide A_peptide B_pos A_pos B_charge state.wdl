version 1.0

task CruxXlinkScoreSpectrumPeptide APeptide BPos APos BCharge state {
  input {
    String? linkLinkMass
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-score-spectrum peptide A peptide B pos A pos B charge state \
      ~{linkLinkMass} \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}