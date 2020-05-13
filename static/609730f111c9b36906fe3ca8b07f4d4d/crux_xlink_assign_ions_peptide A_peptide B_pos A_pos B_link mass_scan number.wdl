version 1.0

task CruxXlinkAssignIonsPeptide APeptide BPos APos BLink massScan number {
  input {
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-assign-ions peptide A peptide B pos A pos B link mass scan number \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}