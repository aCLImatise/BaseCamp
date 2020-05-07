version 1.0

task BpMetaGff.pl {
  input {
    String dD
    String databaseDatabase
    String adaptorAdaptor
    Boolean userUser
    Boolean passPass
  }
  command <<<
    bp_meta_gff.pl \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(adaptorAdaptor) then ("--adaptor " +  '"' + adaptorAdaptor + '"') else ""} \
      ~{true="--user" false="" userUser} \
      ~{true="--pass" false="" passPass}
  >>>
}