version 1.0

task CruxXlinkAssignIonsPeptide APeptide BPos APos BLink massCharge stateScan number {
  input {
    String? ms2Ms2File
  }
  command <<<
    crux xlink-assign-ions peptide A peptide B pos A pos B link mass charge state scan number \
      ~{ms2Ms2File}
  >>>
}