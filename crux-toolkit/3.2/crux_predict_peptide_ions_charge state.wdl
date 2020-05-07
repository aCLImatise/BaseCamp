version 1.0

task CruxPredictPeptideIonsCharge state {
  input {
    String? peptidePeptideSequence
    String? chargeChargeState
  }
  command <<<
    crux predict-peptide-ions charge state \
      ~{peptidePeptideSequence} \
      ~{chargeChargeState}
  >>>
}