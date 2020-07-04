version 1.0

task AgatConvertEmbl2gff.pl {
  input {
    Boolean? embl
    Boolean? primary_tag
    Boolean? means_tags_discarded
    String? outfile
    String gaas_converter_embl_two_gff_do_tpl
  }
  command <<<
    agat_convert_embl2gff.pl \
      ~{gaas_converter_embl_two_gff_do_tpl} \
      ~{true="--embl" false="" embl} \
      ~{true="--primary_tag" false="" primary_tag} \
      ~{true="-d" false="" means_tags_discarded} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    embl: "Input EMBL file that will be read"
    primary_tag: "List of \"primary tag\". Useful to discard or keep specific features. Multiple tags must be coma-separated."
    means_tags_discarded: "Means that primary tags provided by the option \"primary_tag\" will be discarded."
    outfile: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
    gaas_converter_embl_two_gff_do_tpl: ""
  }
}