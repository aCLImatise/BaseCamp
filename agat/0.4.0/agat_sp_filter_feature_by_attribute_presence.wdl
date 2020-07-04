version 1.0

task AgatSpFilterFeatureByAttributePresence.pl {
  input {
    String? ref_file
    String? type
    Boolean? attribute
    Boolean? flip
    String? output_gff_file
  }
  command <<<
    agat_sp_filter_feature_by_attribute_presence.pl \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--attribute" false="" attribute} \
      ~{true="--flip" false="" flip} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    ref_file: "Input GFF3 file that will be read"
    type: "primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taking into account. fill the option by the value \"all\" will have the same behaviour."
    attribute: "String - Attributes tag specified will be used to filter the feature type (feature type can also be specified by the option -p). List of attribute tags must be coma separated."
    flip: "BOLEAN - In order to flip the test and keep features that do have the attribute and filter those without"
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}