version 1.0

task HalAlignmentDepth {
  input {
    String hal_path
    String ref_genome
  }
  command <<<
    halAlignmentDepth \
      ~{hal_path} \
      ~{ref_genome}
  >>>
  parameter_meta {
    hal_path: ""
    ref_genome: ""
  }
}