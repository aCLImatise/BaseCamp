version 1.0

task Frgumdmerge {
  input {
    Boolean? zero
    Boolean? one
    Boolean? determines_field_mustmatch
    File frg_file
    File umd_seq_file
    File umd_qual_file
  }
  command <<<
    frg_umd_merge \
      ~{frg_file} \
      ~{umd_seq_file} \
      ~{umd_qual_file} \
      ~{if (zero) then "-0" else ""} \
      ~{if (one) then "-1" else ""} \
      ~{if (determines_field_mustmatch) then "-2" else ""}
  >>>
  parameter_meta {
    zero: ""
    one: ""
    determines_field_mustmatch: "Determines which field on fasta header line must\\nmatch the seqname in the src field of the frg file\\n-0  no match required (default)\\n-1  first field must match\\n-2  second field must match"
    frg_file: ""
    umd_seq_file: ""
    umd_qual_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}