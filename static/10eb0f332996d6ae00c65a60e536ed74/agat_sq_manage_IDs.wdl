version 1.0

task AgatSqManageIDs.pl {
  input {
    String? string_input_gtfgff
    Boolean? of
    String? string_output_file
    String agat_sq_manage_id_do_tpl
  }
  command <<<
    agat_sq_manage_IDs.pl \
      ~{agat_sq_manage_id_do_tpl} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{true="--of" false="" of} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    of: "Output format, if no ouput format is given, the same as the input one detected will be used. Otherwise you can force to have a gff version 1 or 2 or 3 by giving the corresponding number."
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
    agat_sq_manage_id_do_tpl: ""
  }
}