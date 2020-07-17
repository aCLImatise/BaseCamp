version 1.0

task GapCloser {
  input {
    Boolean? string_input_file_name
    Boolean? string_info_file_name
    Boolean? string_output_file_name
    Boolean? int_maximum_read
    Boolean? int_overlap_param
    Boolean? int_thread_number
  }
  command <<<
    GapCloser \
      ~{true="-a" false="" string_input_file_name} \
      ~{true="-b" false="" string_info_file_name} \
      ~{true="-o" false="" string_output_file_name} \
      ~{true="-l" false="" int_maximum_read} \
      ~{true="-p" false="" int_overlap_param} \
      ~{true="-t" false="" int_thread_number}
  >>>
  parameter_meta {
    string_input_file_name: "<string>        input scaffold file name, required."
    string_info_file_name: "<string>        input library info file name, required."
    string_output_file_name: "<string>        output file name, required."
    int_maximum_read: "<int>           maximum read length (<=155), default=100."
    int_overlap_param: "<int>           overlap param(<=31), default=25."
    int_thread_number: "<int>           thread number, default=1."
  }
}