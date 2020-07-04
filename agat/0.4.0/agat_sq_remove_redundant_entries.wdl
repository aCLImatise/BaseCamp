version 1.0

task AgatSqRemoveRedundantEntries.pl {
  input {
    String? string_input_gtfgff
    String? string_output_file
    String agat_remove_redundant_entries_do_tpl
  }
  command <<<
    agat_sq_remove_redundant_entries.pl \
      ~{agat_remove_redundant_entries_do_tpl} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
    agat_remove_redundant_entries_do_tpl: ""
  }
}