version 1.0

task BpBulkLoadGff.pl {
  input {
    String dD
    String databaseDatabase
    Boolean adaptorAdaptor
    Boolean createCreate
    Boolean userUser
    Boolean fastFastA
    Boolean longLongList
    Boolean passwordPassword
    Boolean maxMaxBin
    Boolean localLocal
    Boolean maxMaxFeature
    Boolean groupGroup
    Boolean gff3Gff3Munge
    Boolean summarySummary
    Boolean temporaryTemporary
    String? notesNotes
  }
  command <<<
    bp_bulk_load_gff.pl \
      ~{notesNotes} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--adaptor" false="" adaptorAdaptor} \
      ~{true="--create" false="" createCreate} \
      ~{true="--user" false="" userUser} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--long_list" false="" longLongList} \
      ~{true="--password" false="" passwordPassword} \
      ~{true="--maxbin" false="" maxMaxBin} \
      ~{true="--local" false="" localLocal} \
      ~{true="--maxfeature" false="" maxMaxFeature} \
      ~{true="--group" false="" groupGroup} \
      ~{true="--gff3_munge" false="" gff3Gff3Munge} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--Temporary" false="" temporaryTemporary}
  >>>
}