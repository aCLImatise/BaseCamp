version 1.0

task GaasMakerGetRidOfContig.pl {
  input {
    String datastoreDatastoreName
    String contigContigName
    String deleteDeleteContig
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_maker_get_rid_of_contig.pl \
      ~{if defined(datastoreDatastoreName) then ("--datastore-name " +  '"' + datastoreDatastoreName + '"') else ""} \
      ~{if defined(contigContigName) then ("--contig-name " +  '"' + contigContigName + '"') else ""} \
      ~{if defined(deleteDeleteContig) then ("--delete-contig " +  '"' + deleteDeleteContig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}