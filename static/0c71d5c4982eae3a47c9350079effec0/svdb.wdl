version 1.0

task Svdb {
  input {
    Boolean? build
    Boolean? query
    Boolean? merge
    Boolean? export
    Float sv_db_two_dot_four_dot_zero
  }
  command <<<
    svdb \
      ~{sv_db_two_dot_four_dot_zero} \
      ~{if (build) then "--build" else ""} \
      ~{if (query) then "--query" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (export) then "--export" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    build: "create a db"
    query: "query a db"
    merge: "merge similar structural variants within a vcf file"
    export: "export a database"
    sv_db_two_dot_four_dot_zero: ""
  }
  output {
    File out_stdout = stdout()
  }
}