version 1.0

task FrgUmdMerge {
  input {
    Boolean? determines_field_match
    String frg_file
    String umd_seq_file
    String umd_qual_file
  }
  command <<<
    frg-umd-merge \
      ~{frg_file} \
      ~{umd_seq_file} \
      ~{umd_qual_file} \
      ~{true="-2" false="" determines_field_match}
  >>>
  parameter_meta {
    determines_field_match: "Determines which field on fasta header line must match the seqname in the src field of the frg file -0  no match required (default) -1  first field must match -2  second field must match"
    frg_file: ""
    umd_seq_file: ""
    umd_qual_file: ""
  }
}