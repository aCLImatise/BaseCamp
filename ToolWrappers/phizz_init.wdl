version 1.0

task PhizzInit {
  input {
    File? db_name
  }
  command <<<
    phizz init \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""}
  >>>
  parameter_meta {
    db_name: "--path TEXT\\n--help          Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}