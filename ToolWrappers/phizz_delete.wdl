version 1.0

task PhizzDelete {
  input {
    File? db_name
  }
  command <<<
    phizz delete \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""}
  >>>
  parameter_meta {
    db_name: "--path TEXT\\n--help          Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}