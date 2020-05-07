version 1.0

task CruxXlinkAssignIonsPeptide APeptide BPos ALink mass {
  input {
    String? posbPosb
    String? linkLinkMass
    String? chargeChargeState
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-assign-ions peptide A peptide B pos A link mass \
      ~{posbPosb} \
      ~{linkLinkMass} \
      ~{chargeChargeState} \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}