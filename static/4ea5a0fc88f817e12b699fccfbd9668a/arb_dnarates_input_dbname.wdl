version 1.0

task ArbDnaratesInputDbname {
  input {
    String? db_save_name
  }
  command <<<
    arb_dnarates input dbname \
      ~{db_save_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db_save_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}