version 1.0

task PhizzDelete {
  input {
    File? db_name
    File? path
  }
  command <<<
    phizz delete \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    db_name: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}