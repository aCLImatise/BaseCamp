version 1.0

task Abyssdbtxt {
  input {
    String sqlite_repository
  }
  command <<<
    abyss_db_txt \
      ~{sqlite_repository}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0"
  }
  parameter_meta {
    sqlite_repository: ""
  }
  output {
    File out_stdout = stdout()
  }
}