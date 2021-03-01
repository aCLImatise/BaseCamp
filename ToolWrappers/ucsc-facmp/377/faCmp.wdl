version 1.0

task FaCmp {
  input {
    Boolean? soft_mask
    Boolean? sort_name
    Boolean? peptide
    String a_dot_fa
  }
  command <<<
    faCmp \
      ~{a_dot_fa} \
      ~{if (soft_mask) then "-softMask" else ""} \
      ~{if (sort_name) then "-sortName" else ""} \
      ~{if (peptide) then "-peptide" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    soft_mask: "- use the soft masking information during the compare\\nDifferences will be noted if the masking is different."
    sort_name: "- sort input files by name before comparing"
    peptide: "- read as peptide sequences"
    a_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}