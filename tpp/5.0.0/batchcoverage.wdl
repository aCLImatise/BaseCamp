version 1.0

task Batchcoverage {
  input {
    String database
    String input_file
    String output_file
  }
  command <<<
    batchcoverage \
      ~{database} \
      ~{input_file} \
      ~{output_file}
  >>>
  parameter_meta {
    database: ""
    input_file: ""
    output_file: ""
  }
}