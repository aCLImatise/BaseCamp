version 1.0

task CruxXlinkAssignIonsPeptide APeptide BPos APos BLink massCharge state {
  command <<<
    crux xlink-assign-ions peptide A peptide B pos A pos B link mass charge state
  >>>
}