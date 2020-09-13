version 1.0

task BuildProtInfoDbpl {
  command <<<
    build_prot_info_db_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}