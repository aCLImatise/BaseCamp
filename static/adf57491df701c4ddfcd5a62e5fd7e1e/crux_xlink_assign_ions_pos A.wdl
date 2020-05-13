version 1.0

task CruxXlinkAssignIonsPos A {
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
    crux xlink-assign-ions pos A \
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