version 1.0

task GetFlagRelativeAbundancesTablepl {
  command <<<
    get_flag_relative_abundances_table_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}