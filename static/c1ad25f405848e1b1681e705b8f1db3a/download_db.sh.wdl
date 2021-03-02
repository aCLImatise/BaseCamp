version 1.0

task Downloaddbsh {
  command <<<
    download_db_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidfinder:2.1.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}