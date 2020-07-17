version 1.0

task HalCoverage {
  input {
    String hal_file
    String ref_genome
  }
  command <<<
    halCoverage \
      ~{hal_file} \
      ~{ref_genome}
  >>>
  parameter_meta {
    hal_file: ""
    ref_genome: ""
  }
}