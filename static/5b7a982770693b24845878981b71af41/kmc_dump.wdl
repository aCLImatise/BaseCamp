version 1.0

task KmcDump {
  input {
    String kmc_database
    String output_file
  }
  command <<<
    kmc_dump \
      ~{kmc_database} \
      ~{output_file}
  >>>
  parameter_meta {
    kmc_database: ""
    output_file: ""
  }
}