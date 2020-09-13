version 1.0

task Mbupgradetable {
  command <<<
    mb_upgrade_table
  >>>
  output {
    File out_stdout = stdout()
  }
}