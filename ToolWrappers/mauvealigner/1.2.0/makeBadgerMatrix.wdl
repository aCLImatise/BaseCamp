version 1.0

task MakeBadgerMatrix {
  input {
    String input_x_mfa
    File output_badger_file
    File lcb_coordinate_file
  }
  command <<<
    makeBadgerMatrix \
      ~{input_x_mfa} \
      ~{output_badger_file} \
      ~{lcb_coordinate_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_x_mfa: ""
    output_badger_file: ""
    lcb_coordinate_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_badger_file = "${in_output_badger_file}"
  }
}