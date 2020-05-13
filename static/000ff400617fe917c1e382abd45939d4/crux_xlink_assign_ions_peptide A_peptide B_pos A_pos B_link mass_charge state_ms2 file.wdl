version 1.0

task CruxXlinkAssignIonsPeptide APeptide BPos APos BLink massCharge stateMs2 file {
  input {
    String? scanScanNumber
    String? ms2Ms2File
  }
  command <<<
    crux xlink-assign-ions peptide A peptide B pos A pos B link mass charge state ms2 file \
      ~{scanScanNumber} \
      ~{ms2Ms2File}
  >>>
}