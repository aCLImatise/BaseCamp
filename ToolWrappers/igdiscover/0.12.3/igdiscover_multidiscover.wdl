version 1.0

task IgdiscoverMultidiscover {
  input {
    Int? minimum_frequency
    Int? minimum_db_diff
    String discover_dot_tab
  }
  command <<<
    igdiscover multidiscover \
      ~{discover_dot_tab} \
      ~{if defined(minimum_frequency) then ("--minimum-frequency " +  '"' + minimum_frequency + '"') else ""} \
      ~{if defined(minimum_db_diff) then ("--minimum-db-diff " +  '"' + minimum_db_diff + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_frequency: "Minimum number of datasets in which sequence must\\noccur (default is no. of files divided by two)"
    minimum_db_diff: "Use only sequences that have at least DIST differences\\nto the database sequence. Default: 1\\n"
    discover_dot_tab: "Table created by the \\\"discover\\\" command (give at least\\ntwo)"
  }
  output {
    File out_stdout = stdout()
  }
}