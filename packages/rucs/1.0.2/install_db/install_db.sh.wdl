version 1.0

task InstallDbsh {
  command <<<
    install_db_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}