version 1.0

task BpMetaGffpl {
  input {
    String? of__database
    String? database
    String? adaptor
    Boolean? user
    Boolean? pass
  }
  command <<<
    bp_meta_gff_pl \
      ~{if defined(of__database) then ("-d " +  '"' + of__database + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(adaptor) then ("--adaptor " +  '"' + adaptor + '"') else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (pass) then "--pass" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    of__database: "of --database."
    database: "Mysql database name (default dbi:mysql:test)"
    adaptor: "Mysql adaptor (default dbi::mysqlopt)"
    user: "<user>      Username for mysql authentication"
    pass: "<password>  Password for mysql authentication"
  }
  output {
    File out_stdout = stdout()
  }
}