version 1.0

task HalAlignedExtract {
  input {
    String hal_path
    String genome
  }
  command <<<
    halAlignedExtract \
      ~{hal_path} \
      ~{genome}
  >>>
  parameter_meta {
    hal_path: ""
    genome: ""
  }
}