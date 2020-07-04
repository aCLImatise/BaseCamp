version 1.0

task Svdb {
  input {
    Boolean? build
    Boolean? query
    Boolean? merge
    Boolean? export
    String sv_db_two_dot_four_dot_zero
  }
  command <<<
    svdb \
      ~{sv_db_two_dot_four_dot_zero} \
      ~{true="--build" false="" build} \
      ~{true="--query" false="" query} \
      ~{true="--merge" false="" merge} \
      ~{true="--export" false="" export}
  >>>
  parameter_meta {
    build: "create a db"
    query: "query a db"
    merge: "merge similar structural variants within a vcf file"
    export: "export a database"
    sv_db_two_dot_four_dot_zero: ""
  }
}