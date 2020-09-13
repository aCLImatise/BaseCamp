version 1.0

task AgatSqAddAttributesFromTsvpl {
  input {
    Boolean? gff
    Boolean? tsv
    Boolean? csv
    String? verbose
    File? string_output_file
    String agat_sq_add_attributes_from_tsv_do_tpl
  }
  command <<<
    agat_sq_add_attributes_from_tsv_pl \
      ~{agat_sq_add_attributes_from_tsv_do_tpl} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    gff: "STRING: Input GTF/GFF file."
    tsv: "STRING: Input tsv file"
    csv: "BOLEAN: Inform the script that the tsv input file is actually a\\ncsv (coma-separated)."
    verbose: "BOLEAN: Add verbosity"
    string_output_file: "STRING: Output file. If no output file is specified, the output\\nwill be written to STDOUT. The result is in tabulate format."
    agat_sq_add_attributes_from_tsv_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}