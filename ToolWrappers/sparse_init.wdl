version 1.0

task SparseInit {
  input {
    String? dbname
  }
  command <<<
    sparse init \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""}
  >>>
  parameter_meta {
    dbname: "Name for the new database to be generated.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}