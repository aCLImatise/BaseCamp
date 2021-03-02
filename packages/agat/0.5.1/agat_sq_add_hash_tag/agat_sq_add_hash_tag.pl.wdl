version 1.0

task AgatSqAddHashTagpl {
  input {
    File? string_input_gtfgff
    Int? interval
    File? string_output_file
    String agat_sq_add_hash_tag_do_tpl
  }
  command <<<
    agat_sq_add_hash_tag_pl \
      ~{agat_sq_add_hash_tag_do_tpl} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    interval: "Integer: 1 or 2. 1 will add ### after each new sequence (column1\\nof the gff), while 2 will add the ### after each group of\\nfeature (gene). By default the value is 1."
    string_output_file: "STRING: Output file. If no output file is specified, the output\\nwill be written to STDOUT. The result is in tabulate format."
    agat_sq_add_hash_tag_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}