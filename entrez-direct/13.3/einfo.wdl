version 1.0

task Einfo {
  input {
    Boolean? db
    Boolean? dbs
    Boolean? fields
    Boolean? links
  }
  command <<<
    einfo \
      ~{true="-db" false="" db} \
      ~{true="-dbs" false="" dbs} \
      ~{true="-fields" false="" fields} \
      ~{true="-links" false="" links}
  >>>
  parameter_meta {
    db: "Database name"
    dbs: "Get all database names"
    fields: "Print field names"
    links: "Print link names"
  }
}