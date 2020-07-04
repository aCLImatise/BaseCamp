version 1.0

task AgatSqAddHashTag.pl {
  input {
    String? string_input_gtfgff
    String? interval
    String? string_output_file
  }
  command <<<
    agat_sq_add_hash_tag.pl \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    interval: "Integer: 1 or 2. 1 will add ### after each new sequence (column1 of the gff), while 2 will add the ### after each group of feature (gene). By default the value is 1."
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
  }
}