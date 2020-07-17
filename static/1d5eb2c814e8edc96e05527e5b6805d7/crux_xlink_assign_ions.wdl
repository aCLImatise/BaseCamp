version 1.0

task CruxXlinkAssignIons {
  input {
    String peptide_a
    String peptide_b
    String pos_a
    String pos_b
    String link_mass
    String charge_state
    String scan_number
    String ms_two_file
  }
  command <<<
    crux xlink-assign-ions \
      ~{peptide_a} \
      ~{peptide_b} \
      ~{pos_a} \
      ~{pos_b} \
      ~{link_mass} \
      ~{charge_state} \
      ~{scan_number} \
      ~{ms_two_file}
  >>>
  parameter_meta {
    peptide_a: ""
    peptide_b: ""
    pos_a: ""
    pos_b: ""
    link_mass: ""
    charge_state: ""
    scan_number: ""
    ms_two_file: ""
  }
}