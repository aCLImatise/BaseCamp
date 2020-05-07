version 1.0

task BpSeqfeatureGff3.pl {
  input {
    Boolean dsnDsn
    Boolean adaptorAdaptor
    Boolean userUser
    Boolean passwordPassword
    Boolean gff3optGff3opt
  }
  command <<<
    bp_seqfeature_gff3.pl \
      ~{true="--dsn" false="" dsnDsn} \
      ~{true="--adaptor" false="" adaptorAdaptor} \
      ~{true="--user" false="" userUser} \
      ~{true="--password" false="" passwordPassword} \
      ~{true="--gff3opt" false="" gff3optGff3opt}
  >>>
}