version 1.0

task Hal2fasta {
  input {
    String in_hal_path
    String genome
  }
  command <<<
    hal2fasta \
      ~{in_hal_path} \
      ~{genome}
  >>>
  parameter_meta {
    in_hal_path: ""
    genome: ""
  }
}