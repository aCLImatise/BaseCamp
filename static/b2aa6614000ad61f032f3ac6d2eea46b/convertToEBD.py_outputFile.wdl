version 1.0

task ConvertToEBDpyOutputFile {
  input {
    String convert_to_ebd_do_tpy
    String input_file
    String output_file
  }
  command <<<
    convertToEBD_py outputFile \
      ~{convert_to_ebd_do_tpy} \
      ~{input_file} \
      ~{output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    convert_to_ebd_do_tpy: ""
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}