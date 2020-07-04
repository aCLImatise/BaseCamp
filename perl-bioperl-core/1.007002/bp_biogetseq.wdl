version 1.0

task BpBiogetseq.pl {
  input {
    String? namespace
    String? dbname
    String? format
  }
  command <<<
    bp_biogetseq.pl \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""} \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    namespace: "id [ ids... ]"
    dbname: ""
    format: ""
  }
}