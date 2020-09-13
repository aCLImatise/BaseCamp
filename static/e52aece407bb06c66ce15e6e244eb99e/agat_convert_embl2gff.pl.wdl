version 1.0

task AgatConvertEmbl2gffpl {
  input {
    Boolean? embl
    Boolean? primary_tag
    Boolean? means_tags_discarded
    File? outfile
    Int gaas_converter_embl_two_gff_do_tpl
    String format_dot
  }
  command <<<
    agat_convert_embl2gff_pl \
      ~{gaas_converter_embl_two_gff_do_tpl} \
      ~{format_dot} \
      ~{if (embl) then "--embl" else ""} \
      ~{if (primary_tag) then "--primary_tag" else ""} \
      ~{if (means_tags_discarded) then "-d" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    embl: "Input EMBL file that will be read"
    primary_tag: "List of \\\"primary tag\\\". Useful to discard or keep specific\\nfeatures. Multiple tags must be coma-separated."
    means_tags_discarded: "Means that primary tags provided by the option \\\"primary_tag\\\"\\nwill be discarded."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    gaas_converter_embl_two_gff_do_tpl: "Description:"
    format_dot: "Usage:\\ngaas_converter_embl2gff.pl --embl infile.embl [ -o outfile ]"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}