version 1.0

task FaCmp {
  input {
    Boolean? soft_mask
    Boolean? sort_name
    Boolean? peptide
    String a_dot_fa
    String b_dot_fa
  }
  command <<<
    faCmp \
      ~{a_dot_fa} \
      ~{b_dot_fa} \
      ~{true="-softMask" false="" soft_mask} \
      ~{true="-sortName" false="" sort_name} \
      ~{true="-peptide" false="" peptide}
  >>>
  parameter_meta {
    soft_mask: "- use the soft masking information during the compare Differences will be noted if the masking is different."
    sort_name: "- sort input files by name before comparing"
    peptide: "- read as peptide sequences"
    a_dot_fa: ""
    b_dot_fa: ""
  }
}