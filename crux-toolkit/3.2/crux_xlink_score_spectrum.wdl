version 1.0

task CruxXlinkscorespectrum {
  input {
    String peptide_a
    String peptide_b
    String pos_a
    String pos_b
    String link_mass
    String charge_state
    Int scan_number
  }
  command <<<
    crux xlink_score_spectrum \
      ~{peptide_a} \
      ~{peptide_b} \
      ~{pos_a} \
      ~{pos_b} \
      ~{link_mass} \
      ~{charge_state} \
      ~{scan_number}
  >>>
  parameter_meta {
    peptide_a: ""
    peptide_b: ""
    pos_a: ""
    pos_b: ""
    link_mass: ""
    charge_state: ""
    scan_number: ""
  }
  output {
    File out_stdout = stdout()
  }
}