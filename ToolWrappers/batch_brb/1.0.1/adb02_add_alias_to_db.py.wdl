version 1.0

task Adb02AddAliasToDbpy {
  input {
    File? in_file
    Int? db
    String? name
  }
  command <<<
    adb02_add_alias_to_db_py \
      ~{if defined(in_file) then ("-infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    in_file: "List of accessions"
    db: "SQLite3 database"
    name: "Name of alias database"
  }
  output {
    File out_stdout = stdout()
  }
}