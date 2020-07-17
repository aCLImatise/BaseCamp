version 1.0

task HalMaskExtract {
  input {
    String hal_file
    String genome
  }
  command <<<
    halMaskExtract \
      ~{hal_file} \
      ~{genome}
  >>>
  parameter_meta {
    hal_file: ""
    genome: ""
  }
}