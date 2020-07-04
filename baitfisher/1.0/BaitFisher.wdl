version 1.0

task BaitFisher {
  input {
    String parameter_file
    String? gff_file_test
  }
  command <<<
    BaitFisher \
      ~{parameter_file} \
      ~{gff_file_test}
  >>>
  parameter_meta {
    parameter_file: ""
    gff_file_test: ""
  }
}