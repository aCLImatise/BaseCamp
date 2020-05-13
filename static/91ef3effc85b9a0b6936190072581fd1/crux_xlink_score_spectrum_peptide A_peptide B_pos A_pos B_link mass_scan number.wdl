version 1.0

task CruxXlinkScoreSpectrumPeptide APeptide BPos APos BLink massScan number {
  input {
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-score-spectrum peptide A peptide B pos A pos B link mass scan number \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}