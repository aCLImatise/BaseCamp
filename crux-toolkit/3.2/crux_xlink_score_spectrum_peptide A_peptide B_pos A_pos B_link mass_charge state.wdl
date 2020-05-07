version 1.0

task CruxXlinkScoreSpectrumPeptide APeptide BPos APos BLink massCharge state {
  command <<<
    crux xlink-score-spectrum peptide A peptide B pos A pos B link mass charge state
  >>>
}