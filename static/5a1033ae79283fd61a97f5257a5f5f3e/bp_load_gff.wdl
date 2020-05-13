version 1.0

task BpLoadGff.pl {
  input {
    String dD
    Boolean dsnDsn
    String adaptorAdaptor
    Boolean userUser
    Boolean passPass
    Boolean fastFastA
    Boolean createCreate
    Boolean maxMaxFeature
    Boolean groupGroup
    Boolean upgradeUpgrade
    Boolean gff3Gff3Munge
    Boolean quietQuiet
    Boolean summarySummary
    String? notesNotes
  }
  command <<<
    bp_load_gff.pl \
      ~{notesNotes} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="--dsn" false="" dsnDsn} \
      ~{if defined(adaptorAdaptor) then ("--adaptor " +  '"' + adaptorAdaptor + '"') else ""} \
      ~{true="--user" false="" userUser} \
      ~{true="--pass" false="" passPass} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--create" false="" createCreate} \
      ~{true="--maxfeature" false="" maxMaxFeature} \
      ~{true="--group" false="" groupGroup} \
      ~{true="--upgrade" false="" upgradeUpgrade} \
      ~{true="--gff3_munge" false="" gff3Gff3Munge} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--summary" false="" summarySummary}
  >>>
}