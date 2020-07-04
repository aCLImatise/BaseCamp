version 1.0

task HalIndels {
  input {
    String hal_file
    String ref_genome
  }
  command <<<
    halIndels \
      ~{hal_file} \
      ~{ref_genome}
  >>>
  parameter_meta {
    hal_file: ""
    ref_genome: ""
  }
}