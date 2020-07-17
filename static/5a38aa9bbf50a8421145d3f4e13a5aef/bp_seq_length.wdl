version 1.0

task BpSeqLength.pl {
  input {
    Boolean? f_slash_format
  }
  command <<<
    bp_seq_length.pl \
      ~{true="-f/--format" false="" f_slash_format}
  >>>
  parameter_meta {
    f_slash_format: "- Specify the database format ('fasta' is default). This script uses SeqIO and as such formats are  limited to those which SeqIO system supports."
  }
}