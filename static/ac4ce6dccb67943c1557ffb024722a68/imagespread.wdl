version 1.0

task Imagespread {
  input {
    String seq_name_list
    String msp_list
    String number_of_output_files
  }
  command <<<
    imagespread \
      ~{seq_name_list} \
      ~{msp_list} \
      ~{number_of_output_files}
  >>>
  parameter_meta {
    seq_name_list: ""
    msp_list: ""
    number_of_output_files: ""
  }
}