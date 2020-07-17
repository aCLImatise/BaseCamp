version 1.0

task AgatSpFilterFeatureByAttributeValue.pl {
  input {
    String? output_gff_file
    Boolean? verbose_option_debugging
  }
  command <<<
    agat_sp_filter_feature_by_attribute_value.pl \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{true="-v" false="" verbose_option_debugging}
  >>>
  parameter_meta {
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
    verbose_option_debugging: "Verbose option for debugging purpose."
  }
}