version 1.0

task CruxPredictpeptideionsMono {
  input {
    String crux
    String predict_peptide_ions
    String peptide_sequence
  }
  command <<<
    crux predict_peptide_ions mono_ \
      ~{crux} \
      ~{predict_peptide_ions} \
      ~{peptide_sequence}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    predict_peptide_ions: ""
    peptide_sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}