version 1.0

task AgatSpFilterFeatureByAttributePresencepl {
  input {
    File? ref_file
    Int? type
    Boolean? attribute
    Boolean? flip
    File? output_gff_file
    String agat_sp_select_feature_by_attribute_presence_do_tpl
  }
  command <<<
    agat_sp_filter_feature_by_attribute_presence_pl \
      ~{agat_sp_select_feature_by_attribute_presence_do_tpl} \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (attribute) then "--attribute" else ""} \
      ~{if (flip) then "--flip" else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    ref_file: "Input GFF3 file that will be read"
    type: "primary tag option, case insensitive, list. Allow to specied the\\nfeature types that will be handled. You can specified a specific\\nfeature by given its primary tag name (column 3) as: cds, Gene,\\nMrNa You can specify directly all the feature of a particular\\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\\ndefault all feature are taking into account. fill the option by\\nthe value \\\"all\\\" will have the same behaviour."
    attribute: "String - Attributes tag specified will be used to filter the\\nfeature type (feature type can also be specified by the option\\n-p). List of attribute tags must be coma separated."
    flip: "BOLEAN - In order to flip the test and keep features that do\\nhave the attribute and filter those without"
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_select_feature_by_attribute_presence_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}