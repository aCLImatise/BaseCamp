version 1.0

task AgatSqRemoveRedundantEntriespl {
  input {
    File? string_input_gtfgff
    File? string_output_file
    String agat_remove_redundant_entries_do_tpl
  }
  command <<<
    agat_sq_remove_redundant_entries_pl \
      ~{agat_remove_redundant_entries_do_tpl} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    string_output_file: "STRING: Output file. If no output file is specified, the output\\nwill be written to STDOUT. The result is in tabulate format."
    agat_remove_redundant_entries_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}