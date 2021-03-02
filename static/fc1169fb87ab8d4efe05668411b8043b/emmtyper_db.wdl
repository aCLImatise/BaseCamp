version 1.0

task Emmtyperdb {
  input {
    Float? db_folder
    String email
  }
  command <<<
    emmtyper_db \
      ~{email} \
      ~{if defined(db_folder) then ("--db_folder " +  '"' + db_folder + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db_folder: "Where to update the DB  [default:\\n/usr/local/lib/python3.7/site-packages/emmtyper/db]"
    email: ""
  }
  output {
    File out_stdout = stdout()
  }
}