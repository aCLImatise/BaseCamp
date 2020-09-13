version 1.0

task SonLibKvDatabaseTest {
  input {
    String? type
    Directory? db
    String? host
    String? port
    String? user
    String? pass
  }
  command <<<
    sonLib_kvDatabaseTest \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(pass) then ("--pass " +  '"' + pass + '"') else ""}
  >>>
  parameter_meta {
    type: "- one of 'KyotoTycoon', 'TokyoCabinet' or 'MySql'.\\nValues area case-insensitive, defaults to TokyoCabinet."
    db: "- database directory for TokyoCabinet or database name\\nfor SQL databases. Defaults to testTCDatabase for TokyoCabinet,\\nSQL databases must specify."
    host: "- Tycoon or SQL database host, defaults to localhost"
    port: "- Tycoon or SQL database port."
    user: "- SQL database user."
    pass: "- SQL database password."
  }
  output {
    File out_stdout = stdout()
  }
}