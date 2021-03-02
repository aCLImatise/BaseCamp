version 1.0

task BpSeqLengthpl {
  input {
    Boolean? format
    String bioperl_lat_bioperl_dot_org
  }
  command <<<
    bp_seq_length_pl \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{if (format) then "--format" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "- Specify the database format ('fasta' is default).\\nThis script uses SeqIO and as such formats are\\nlimited to those which SeqIO system supports."
    bioperl_lat_bioperl_dot_org: "- General discussion"
  }
  output {
    File out_stdout = stdout()
  }
}