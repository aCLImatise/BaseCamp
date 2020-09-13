version 1.0

task GetAllInfoNuclpl {
  command <<<
    get_all_info_nucl_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}