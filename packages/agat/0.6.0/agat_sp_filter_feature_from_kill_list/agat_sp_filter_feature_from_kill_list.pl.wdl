version 1.0

task AgatSpFilterFeatureFromKillListpl {
  input {
    File? ref_file
    Int? type
    String? kill_list
    String? attribute
    File? output_gff_file
    Boolean? verbose_option_debugging
    String agat_sp_filter_feature_from_kill_list_do_tpl
  }
  command <<<
    agat_sp_filter_feature_from_kill_list_pl \
      ~{agat_sp_filter_feature_from_kill_list_do_tpl} \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(kill_list) then ("--kill_list " +  '"' + kill_list + '"') else ""} \
      ~{if defined(attribute) then ("--attribute " +  '"' + attribute + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if (verbose_option_debugging) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    ref_file: "Input GFF3 file that will be read"
    type: "primary tag option, case insensitive, list. Allow to specied the\\nfeature types that will be handled. You can specified a specific\\nfeature by given its primary tag name (column 3) as: cds, Gene,\\nMrNa You can specify directly all the feature of a particular\\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\\ndefault all feature are taking into account. fill the option by\\nthe value \\\"all\\\" will have the same behaviour."
    kill_list: "Kill list. One value per line."
    attribute: "Attribute tag to specify the attribute to analyse. Case\\nsensitive. Default: ID"
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_debugging: "Verbose option for debugging purpose."
    agat_sp_filter_feature_from_kill_list_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}