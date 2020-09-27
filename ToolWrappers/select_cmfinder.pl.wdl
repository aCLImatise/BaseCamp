version 1.0

task SelectCmfinderpl {
  command <<<
    select_cmfinder_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}