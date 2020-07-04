version 1.0

task BpMetaGff.pl {
  input {
    String? of__database
    String? database
    String? adaptor
    Boolean? user
    Boolean? pass
  }
  command <<<
    bp_meta_gff.pl \
      ~{if defined(of__database) then ("-d " +  '"' + of__database + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(adaptor) then ("--adaptor " +  '"' + adaptor + '"') else ""} \
      ~{true="--user" false="" user} \
      ~{true="--pass" false="" pass}
  >>>
  parameter_meta {
    of__database: "of --database."
    database: "Mysql database name (default dbi:mysql:test)"
    adaptor: "Mysql adaptor (default dbi::mysqlopt)"
    user: "<user>      Username for mysql authentication"
    pass: "<password>  Password for mysql authentication"
  }
}