version 1.0

task AgatSpAlignmentOutputStyle.pl {
  input {
    String? gff
    String? ct
    Boolean? verbose_option_see
    String? output_gff_file
  }
  command <<<
    agat_sp_alignment_output_style.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{true="-v" false="" verbose_option_see} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    ct: "When the gff file provided is not correcly formated and features are linked to each other by a comon tag (by default locus_tag), this tag can be provided to parse the file correctly."
    verbose_option_see: "Verbose option to see the warning messages when parsing the gff file."
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}