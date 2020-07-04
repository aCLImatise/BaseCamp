version 1.0

task CruxPredictPeptideIons {
  input {
    String peptide_sequence
    String charge_state
  }
  command <<<
    crux predict-peptide-ions \
      ~{peptide_sequence} \
      ~{charge_state}
  >>>
  parameter_meta {
    peptide_sequence: ""
    charge_state: ""
  }
}