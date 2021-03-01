version 1.0

task RunMysqlServerSingularitysh {
  command <<<
    run_mysql_server_singularity_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}