version 1.0

task Del01DeleteDbEntriespy {
  input {
    Int? db
    String? name
    Boolean? blast_database_alias
    String? type
  }
  command <<<
    del01_delete_db_entries_py \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if (blast_database_alias) then "-alias" else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    db: "SQLite3 database"
    name: "Name of BLAST database"
    blast_database_alias: "BLAST database is an alias database, default= FALSE"
    type: "Data type either nucl or prot"
  }
  output {
    File out_stdout = stdout()
  }
}