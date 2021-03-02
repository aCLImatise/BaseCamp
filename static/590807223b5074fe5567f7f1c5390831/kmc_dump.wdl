version 1.0

task KmcDump {
  input {
    Boolean? ci
    Boolean? cx
    String kmc_database
    String output_file
  }
  command <<<
    kmc_dump \
      ~{kmc_database} \
      ~{output_file} \
      ~{if (ci) then "-ci" else ""} \
      ~{if (cx) then "-cx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ci: "<value> - exclude k-mers occurring less than <value> times"
    cx: "<value> - exclude k-mers occurring more of than <value> times"
    kmc_database: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}