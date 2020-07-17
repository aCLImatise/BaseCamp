version 1.0

task ConvertToEBD.pyOutputFile {
  input {
    String convert_to_ebd_do_tpy
    String input_file
    String output_file
  }
  command <<<
    convertToEBD.py outputFile \
      ~{convert_to_ebd_do_tpy} \
      ~{input_file} \
      ~{output_file}
  >>>
  parameter_meta {
    convert_to_ebd_do_tpy: ""
    input_file: ""
    output_file: ""
  }
}