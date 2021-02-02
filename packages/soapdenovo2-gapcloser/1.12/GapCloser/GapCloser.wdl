version 1.0

task GapCloser {
  input {
    Boolean? string_name_required
    Boolean? string_input_library
    File? string_file_name
    Boolean? int_maximum_read
    Boolean? int_overlap_default
    Boolean? int_thread_number
    Float one_dot_one_two
    String soap_at_genomics_dot_org_dot_cn
  }
  command <<<
    GapCloser \
      ~{one_dot_one_two} \
      ~{soap_at_genomics_dot_org_dot_cn} \
      ~{if (string_name_required) then "-a" else ""} \
      ~{if (string_input_library) then "-b" else ""} \
      ~{if (string_file_name) then "-o" else ""} \
      ~{if (int_maximum_read) then "-l" else ""} \
      ~{if (int_overlap_default) then "-p" else ""} \
      ~{if (int_thread_number) then "-t" else ""}
  >>>
  parameter_meta {
    string_name_required: "<string>        input scaffold file name, required."
    string_input_library: "<string>        input library info file name, required."
    string_file_name: "<string>        output file name, required."
    int_maximum_read: "<int>           maximum read length (<=155), default=100."
    int_overlap_default: "<int>           overlap param(<=31), default=25."
    int_thread_number: "<int>           thread number, default=1."
    one_dot_one_two: "Contact:"
    soap_at_genomics_dot_org_dot_cn: "Usage:"
  }
  output {
    File out_stdout = stdout()
    File out_string_file_name = "${in_string_file_name}"
  }
}