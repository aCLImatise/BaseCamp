version 1.0

task ProtxmlToPsqlrb {
  command <<<
    protxml_to_psql_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}