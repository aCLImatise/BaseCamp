version 1.0

task CruxPredictpeptideions {
  command <<<
    crux predict_peptide_ions
  >>>
  output {
    File out_stdout = stdout()
  }
}