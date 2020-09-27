version 1.0

task PlastomeArchInfopy {
  input {
    File? output_file
    Int? minimum_repeat_length
    String? valid_bases_default
    String fast_a_format_sequence_file
  }
  command <<<
    plastome_arch_info_py \
      ~{fast_a_format_sequence_file} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(minimum_repeat_length) then ("-r " +  '"' + minimum_repeat_length + '"') else ""} \
      ~{if defined(valid_bases_default) then ("-v " +  '"' + valid_bases_default + '"') else ""}
  >>>
  parameter_meta {
    output_file: "output file."
    minimum_repeat_length: "The minimum repeat length treated as the IR region of\\nplastome. Default: [5000]"
    valid_bases_default: "Valid bases. Default: ATGCRMYKHBDVatgcrmykhbdv"
    fast_a_format_sequence_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}