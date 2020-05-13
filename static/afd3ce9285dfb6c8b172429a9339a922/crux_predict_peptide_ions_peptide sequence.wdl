version 1.0

task CruxPredictPeptideIonsPeptide sequence {
  input {
    String? chargeChargeState
  }
  command <<<
    crux predict-peptide-ions peptide sequence \
      ~{chargeChargeState}
  >>>
}