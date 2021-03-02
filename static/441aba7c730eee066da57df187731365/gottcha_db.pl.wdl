version 1.0

task GottchaDbpl {
  command <<<
    gottcha_db_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}