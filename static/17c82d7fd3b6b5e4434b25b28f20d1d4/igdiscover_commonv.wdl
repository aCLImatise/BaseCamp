version 1.0

task IgdiscoverCommonv {
  input {
    Int? minimum_frequency
    String table
  }
  command <<<
    igdiscover commonv \
      ~{table} \
      ~{if defined(minimum_frequency) then ("--minimum-frequency " +  '"' + minimum_frequency + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_frequency: "Minimum number of datasets in which sequence must\\noccur (default is no. of files divided by two)\\n"
    table: "Tables with parsed and filtered IgBLAST results (give\\nat least two)"
  }
  output {
    File out_stdout = stdout()
  }
}