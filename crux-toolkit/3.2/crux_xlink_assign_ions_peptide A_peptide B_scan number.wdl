version 1.0

task CruxXlinkAssignIonsPeptide APeptide BScan number {
  input {
    String? posPosA
    String? posbPosb
    String? linkLinkMass
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-assign-ions peptide A peptide B scan number \
      ~{posPosA} \
      ~{posbPosb} \
      ~{linkLinkMass} \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}