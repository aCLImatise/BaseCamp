version 1.0

task ProtxmlToPsqlrb {
  command <<<
    protxml_to_psql_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}