version 1.0

task Hal2chain {
  input {
    String hal_file
    String genome
  }
  command <<<
    hal2chain \
      ~{hal_file} \
      ~{genome}
  >>>
  parameter_meta {
    hal_file: ""
    genome: ""
  }
}