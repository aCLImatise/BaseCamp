version 1.0

task HalSingleCopyRegionsExtract {
  input {
    String hal_file
    String reference_genome
  }
  command <<<
    halSingleCopyRegionsExtract \
      ~{hal_file} \
      ~{reference_genome}
  >>>
  parameter_meta {
    hal_file: ""
    reference_genome: ""
  }
}