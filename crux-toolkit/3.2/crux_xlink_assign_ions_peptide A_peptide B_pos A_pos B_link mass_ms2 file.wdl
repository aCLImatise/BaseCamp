version 1.0

task CruxXlinkAssignIonsPeptide APeptide BPos APos BLink massMs2 file {
  input {
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-assign-ions peptide A peptide B pos A pos B link mass ms2 file \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}