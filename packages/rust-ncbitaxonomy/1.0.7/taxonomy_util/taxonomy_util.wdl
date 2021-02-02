version 1.0

task TaxonomyUtil {
  input {
    String? db
  }
  command <<<
    taxonomy_util \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    db: "URL for SQLite taxonomy database"
  }
  output {
    File out_stdout = stdout()
  }
}