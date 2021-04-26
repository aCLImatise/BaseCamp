version 1.0

task AgatSpFilterFeatureByAttributeValuepl {
  input {
    File? ref_file
    String? attribute
    Int? type
    String? value
    String? test
    File? output_gff_file
    Boolean? verbose_option_debugging
    String agat_sp_select_feature_by_attribute_value_do_tpl
  }
  command <<<
    agat_sp_filter_feature_by_attribute_value_pl \
      ~{agat_sp_select_feature_by_attribute_value_do_tpl} \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(attribute) then ("--attribute " +  '"' + attribute + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(value) then ("--value " +  '"' + value + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if (verbose_option_debugging) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    ref_file: "Input GFF3 file that will be read"
    attribute: "Attribute tag to specify the attribute to analyse (attribute\\nexample: tag=value)."
    type: "primary tag option, case insensitive, list. Allow to specied the\\nfeature types that will be handled. You can specified a specific\\nfeature by given its primary tag name (column 3) as: cds, Gene,\\nMrNa You can specify directly all the feature of a particular\\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\\ndefault all feature are taking into account. fill the option by\\nthe value \\\"all\\\" will have the same behaviour."
    value: "to check in the attribute"
    test: "to apply (> < = >= <=). default value \\\"=\\\". If you us"
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_debugging: "Verbose option for debugging purpose."
    agat_sp_select_feature_by_attribute_value_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}