version 1.0

task Frgumdmerge {
  input {
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
      ~{if (determines_field_mustmatch) then "-0" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    determines_field_mustmatch: "Determines which field on fasta header line must\\nmatch the seqname in the src field of the frg file\\n-0  no match required (default)\\n-1  first field must match\\n-2  second field must match"
    frg_file: ""
    umd_seq_file: ""
    umd_qual_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}