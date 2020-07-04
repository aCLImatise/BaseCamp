version 1.0

task DiscoFilter {
  input {
    String mzm_lslash_mz_xml_input_file
    String dia_windows_file
  }
  command <<<
    DiscoFilter \
      ~{mzm_lslash_mz_xml_input_file} \
      ~{dia_windows_file}
  >>>
  parameter_meta {
    mzm_lslash_mz_xml_input_file: ""
    dia_windows_file: ""
  }
}