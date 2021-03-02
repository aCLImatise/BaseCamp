version 1.0

task RunMysqlServerDockersh {
  command <<<
    run_mysql_server_docker_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/caper:1.1.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}