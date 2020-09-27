version 1.0

task GottchaDbpl {
  command <<<
    gottcha_db_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}