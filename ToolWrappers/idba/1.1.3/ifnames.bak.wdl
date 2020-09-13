version 1.0

task Ifnamesbak {
  command <<<
    ifnames_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}