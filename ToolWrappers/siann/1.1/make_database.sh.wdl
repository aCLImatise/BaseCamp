version 1.0

task MakeDatabasesh {
  command <<<
    make_database_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/siann:1.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}