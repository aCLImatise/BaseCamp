version 1.0

task AgatSqAddLocusTagpl {
  input {
    File? string_input_gtfgff
    Int? type
    String? lo
    Int? li
    Boolean? of
    File? string_output_file
    String? quiet
    String agat_sq_add_locus_tag_do_tpl
  }
  command <<<
    agat_sq_add_locus_tag_pl \
      ~{agat_sq_add_locus_tag_do_tpl} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(lo) then ("--lo " +  '"' + lo + '"') else ""} \
      ~{if defined(li) then ("--li " +  '"' + li + '"') else ""} \
      ~{if (of) then "--of" else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    type: "Primary tag option, case insensitive, list. Allow to specied the\\nLevel1 feature types that will be handled. By default all\\nfeature Level1 are taken into account."
    lo: "Locus tag output, by defaut it will be called locus_tag, but\\nusing this option you can specied the name of this attribute."
    li: "Tag input, by default the value of the locus tag attribute will\\nbe locusX where X is an incremented number. You can use the\\nvalues of an existing attribute instead e.g the ID value: --li\\nID."
    of: "Output format, if no ouput format is given, the same as the\\ninput one detected will be used. Otherwise you can force to have\\na gff version 1 or 2 or 3 by giving the corresponding number."
    string_output_file: "STRING: Output file. If no output file is specified, the output\\nwill be written to STDOUT. The result is in tabulate format."
    quiet: "To remove verbosity."
    agat_sq_add_locus_tag_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}