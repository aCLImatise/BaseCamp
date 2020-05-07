version 1.0

task TripailleDbGetDbs {
  input {
    String dbDbId
    String nameName
  }
  command <<<
    tripaille db get_dbs \
      ~{if defined(dbDbId) then ("--db_id " +  '"' + dbDbId + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""}
  >>>
}