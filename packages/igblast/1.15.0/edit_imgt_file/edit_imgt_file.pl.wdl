version 1.0

task EditImgtFilepl {
  command <<<
    edit_imgt_file_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}