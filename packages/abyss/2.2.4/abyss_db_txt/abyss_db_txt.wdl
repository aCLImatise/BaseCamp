version 1.0

task Abyssdbtxt {
  input {
    String sqlite_repository
  }
  command <<<
    abyss_db_txt \
      ~{sqlite_repository}
  >>>
  parameter_meta {
    sqlite_repository: ""
  }
  output {
    File out_stdout = stdout()
  }
}