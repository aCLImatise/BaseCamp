version 1.0

task Efn2Smp {
  input {
    String efn_two
    String ct_file
    String output_file
  }
  command <<<
    efn2-smp \
      ~{efn_two} \
      ~{ct_file} \
      ~{output_file}
  >>>
  parameter_meta {
    efn_two: ""
    ct_file: ""
    output_file: ""
  }
}