version 1.0

task MbupgradetableTableFile {
  command <<<
    mb_upgrade_table table_file
  >>>
  output {
    File out_stdout = stdout()
  }
}