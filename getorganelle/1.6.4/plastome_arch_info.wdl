version 1.0

task PlastomeArchInfo.py {
  input {
    String? output_file
    Int? minimum_repeat_length
    String? valid_bases_atgcrmykhbdvatgcrmykhbdv
    String fast_a_format_sequence_file
  }
  command <<<
    plastome_arch_info.py \
      ~{fast_a_format_sequence_file} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(minimum_repeat_length) then ("-r " +  '"' + minimum_repeat_length + '"') else ""} \
      ~{if defined(valid_bases_atgcrmykhbdvatgcrmykhbdv) then ("-v " +  '"' + valid_bases_atgcrmykhbdvatgcrmykhbdv + '"') else ""}
  >>>
  parameter_meta {
    output_file: "output file."
    minimum_repeat_length: "The minimum repeat length treated as the IR region of plastome. Default: [5000]"
    valid_bases_atgcrmykhbdvatgcrmykhbdv: "Valid bases. Default: ATGCRMYKHBDVatgcrmykhbdv"
    fast_a_format_sequence_file: ""
  }
}