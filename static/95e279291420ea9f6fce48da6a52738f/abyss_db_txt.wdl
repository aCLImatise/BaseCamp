version 1.0

task AbyssDbTxt {
  input {
    String sqlite_repository
  }
  command <<<
    abyss-db-txt \
      ~{sqlite_repository}
  >>>
  parameter_meta {
    sqlite_repository: ""
  }
}