version 1.0

task GetAllInfoProtpl {
  command <<<
    get_all_info_prot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}