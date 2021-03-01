version 1.0

task GapCloser {
  input {
    Boolean? string_input_name
    Boolean? string_library_name
    File? string_output_name
    Boolean? int_maximum_length
    Boolean? int_overlap_param
    Boolean? int_number_default
    Float one_dot_one_two
    String soap_at_genomics_dot_org_dot_cn
  }
  command <<<
    GapCloser \
      ~{one_dot_one_two} \
      ~{soap_at_genomics_dot_org_dot_cn} \
      ~{if (string_input_name) then "-a" else ""} \
      ~{if (string_library_name) then "-b" else ""} \
      ~{if (string_output_name) then "-o" else ""} \
      ~{if (int_maximum_length) then "-l" else ""} \
      ~{if (int_overlap_param) then "-p" else ""} \
      ~{if (int_number_default) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_input_name: "<string>        input scaffold file name, required."
    string_library_name: "<string>        input library info file name, required."
    string_output_name: "<string>        output file name, required."
    int_maximum_length: "<int>           maximum read length (<=155), default=100."
    int_overlap_param: "<int>           overlap param(<=31), default=25."
    int_number_default: "<int>           thread number, default=1."
    one_dot_one_two: "Contact:"
    soap_at_genomics_dot_org_dot_cn: "Usage:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_name = "${in_string_output_name}"
  }
}