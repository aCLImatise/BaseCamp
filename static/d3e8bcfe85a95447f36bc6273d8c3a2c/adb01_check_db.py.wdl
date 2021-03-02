version 1.0

task Adb01CheckDbpy {
  input {
    Int? db
    String? name
  }
  command <<<
    adb01_check_db_py \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    db: "SQLite3 database"
    name: "Name of alias database"
  }
  output {
    File out_stdout = stdout()
  }
}