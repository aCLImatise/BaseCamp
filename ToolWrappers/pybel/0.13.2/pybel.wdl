version 1.0

task Pybel {
  input {
    String? connection
  }
  command <<<
    pybel \
      ~{if defined(connection) then ("--connection " +  '"' + connection + '"') else ""}
  >>>
  parameter_meta {
    connection: "Database connection string.  [default:\\nsqlite:////root/.pybel/pybel_0.13.0_cache.db]"
  }
  output {
    File out_stdout = stdout()
  }
}