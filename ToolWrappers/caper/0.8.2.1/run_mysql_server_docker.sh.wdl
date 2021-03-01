version 1.0

task RunMysqlServerDockersh {
  command <<<
    run_mysql_server_docker_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}