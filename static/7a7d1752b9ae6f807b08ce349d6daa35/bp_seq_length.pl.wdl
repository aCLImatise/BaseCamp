version 1.0

task BpSeqLengthpl {
  input {
    Boolean? f_slash_format
    String bioperl_lat_bioperl_dot_org
  }
  command <<<
    bp_seq_length_pl \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{if (f_slash_format) then "-f/--format" else ""}
  >>>
  parameter_meta {
    f_slash_format: "- Specify the database format ('fasta' is default).\\nThis script uses SeqIO and as such formats are\\nlimited to those which SeqIO system supports."
    bioperl_lat_bioperl_dot_org: "- General discussion"
  }
  output {
    File out_stdout = stdout()
  }
}