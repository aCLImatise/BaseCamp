version 1.0

task TripailleDbGetDbs {
  input {
    String? db_id
    String? name
  }
  command <<<
    tripaille db get_dbs \
      ~{if defined(db_id) then ("--db_id " +  '"' + db_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    db_id: "A db ID"
    name: "filter on db name"
  }
  output {
    File out_stdout = stdout()
  }
}