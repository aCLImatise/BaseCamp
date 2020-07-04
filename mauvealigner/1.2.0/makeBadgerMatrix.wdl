version 1.0

task MakeBadgerMatrix {
  input {
    String input_x_mfa
    String output_badger_file
    String lcb_coordinate_file
  }
  command <<<
    makeBadgerMatrix \
      ~{input_x_mfa} \
      ~{output_badger_file} \
      ~{lcb_coordinate_file}
  >>>
  parameter_meta {
    input_x_mfa: ""
    output_badger_file: ""
    lcb_coordinate_file: ""
  }
}