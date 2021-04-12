version 1.0

task DownloadDatabasesh {
  command <<<
    download_database_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0"
  }
  output {
    File out_stdout = stdout()
  }
}