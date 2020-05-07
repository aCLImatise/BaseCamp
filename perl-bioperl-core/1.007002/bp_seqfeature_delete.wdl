version 1.0

task BpSeqfeatureDelete.pl {
  input {
    Boolean dsnDsn
    Boolean adaptorAdaptor
    Boolean nameName
    Boolean typeType
    Boolean idId
    Boolean verboseVerbose
    Boolean noNoVerbose
    Boolean dryDryRun
    Boolean userUser
    Boolean passwordPassword
    Boolean fastFast
  }
  command <<<
    bp_seqfeature_delete.pl \
      ~{true="--dsn" false="" dsnDsn} \
      ~{true="--adaptor" false="" adaptorAdaptor} \
      ~{true="--name" false="" nameName} \
      ~{true="--type" false="" typeType} \
      ~{true="--id" false="" idId} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--noverbose" false="" noNoVerbose} \
      ~{true="--dryrun" false="" dryDryRun} \
      ~{true="--user" false="" userUser} \
      ~{true="--password" false="" passwordPassword} \
      ~{true="--fast" false="" fastFast}
  >>>
}