version 1.0

task CruxXlinkScoreSpectrumPeptide APeptide BPos APos BLink massMs2 file {
  input {
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-score-spectrum peptide A peptide B pos A pos B link mass ms2 file \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}