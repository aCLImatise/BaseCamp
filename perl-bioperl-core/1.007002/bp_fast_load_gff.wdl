version 1.0

task BpFastLoadGff.pl {
  input {
    String dD
    String databaseDatabase
    Boolean createCreate
    Boolean localLocal
    Boolean userUser
    Boolean fastFastA
    Boolean passwordPassword
    Boolean longLongList
    Boolean maxMaxFeature
    Boolean groupGroup
    Boolean gff3Gff3Munge
    Boolean summarySummary
    Boolean temporaryTemporary
    String? notesNotes
  }
  command <<<
    bp_fast_load_gff.pl \
      ~{notesNotes} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--create" false="" createCreate} \
      ~{true="--local" false="" localLocal} \
      ~{true="--user" false="" userUser} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--password" false="" passwordPassword} \
      ~{true="--long_list" false="" longLongList} \
      ~{true="--maxfeature" false="" maxMaxFeature} \
      ~{true="--group" false="" groupGroup} \
      ~{true="--gff3_munge" false="" gff3Gff3Munge} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--Temporary" false="" temporaryTemporary}
  >>>
}