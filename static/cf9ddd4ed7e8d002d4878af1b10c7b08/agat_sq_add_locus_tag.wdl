version 1.0

task AgatSqAddLocusTag.pl {
  input {
    String? string_input_gtfgff
    String? type
    String? lo
    String? li
    Boolean? of
    String? string_output_file
    String? quiet
  }
  command <<<
    agat_sq_add_locus_tag.pl \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(lo) then ("--lo " +  '"' + lo + '"') else ""} \
      ~{if defined(li) then ("--li " +  '"' + li + '"') else ""} \
      ~{true="--of" false="" of} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    type: "Primary tag option, case insensitive, list. Allow to specied the Level1 feature types that will be handled. By default all feature Level1 are taken into account."
    lo: "Locus tag output, by defaut it will be called locus_tag, but using this option you can specied the name of this attribute."
    li: "Tag input, by default the value of the locus tag attribute will be locusX where X is an incremented number. You can use the values of an existing attribute instead e.g the ID value: --li ID."
    of: "Output format, if no ouput format is given, the same as the input one detected will be used. Otherwise you can force to have a gff version 1 or 2 or 3 by giving the corresponding number."
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
    quiet: "To remove verbosity."
  }
}