version 1.0

task GetAllInfoOrfspl {
  command <<<
    get_all_info_orfs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}