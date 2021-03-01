version 1.0

task RunMysqlServerSingularitysh {
  command <<<
    run_mysql_server_singularity_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/caper:1.1.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}