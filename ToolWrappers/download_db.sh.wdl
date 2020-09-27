version 1.0

task Downloaddbsh {
  command <<<
    download_db_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}