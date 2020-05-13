version 1.0

task Dbletters {
  input {
    String dbDb
  }
  command <<<
    dbletters \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""}
  >>>
}