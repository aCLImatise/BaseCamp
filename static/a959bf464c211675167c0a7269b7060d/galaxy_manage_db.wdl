version 1.0

task Galaxymanagedb {
  command <<<
    galaxy_manage_db
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-data:20.9.1--py_2"
  }
  output {
    File out_stdout = stdout()
  }
}