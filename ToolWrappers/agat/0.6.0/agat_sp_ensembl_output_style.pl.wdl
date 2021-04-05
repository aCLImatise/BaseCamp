version 1.0

task AgatSpEnsemblOutputStylepl {
  input {
    File? gff
    File? ct
    Boolean? verbose_option_see
    String agat_sp_ensembl_output_style_do_tpl
    File file_dot
  }
  command <<<
    agat_sp_ensembl_output_style_pl \
      ~{agat_sp_ensembl_output_style_do_tpl} \
      ~{file_dot} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{if (verbose_option_see) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    ct: "When the gff file provided is not correcly formated and features\\nare linked to each other by a comon tag (by default locus_tag),\\nthis tag can be provided to parse the input file correctly."
    verbose_option_see: "Verbose option to see the warning messages when parsing the gff"
    agat_sp_ensembl_output_style_do_tpl: "Description:"
    file_dot: "-o or --output"
  }
  output {
    File out_stdout = stdout()
  }
}