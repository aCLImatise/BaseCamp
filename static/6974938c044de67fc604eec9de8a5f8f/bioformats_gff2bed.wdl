version 1.0

task BioformatsGff2bed {
  input {
    Boolean? attributes_include_output
    String? name_tag
    String? missing_value
    Boolean? genes
    String? parent_tag
    Boolean? no_order_check
    Boolean? v
    String gff_file
    String type
    String output_file
  }
  command <<<
    bioformats gff2bed \
      ~{gff_file} \
      ~{type} \
      ~{output_file} \
      ~{true="-a" false="" attributes_include_output} \
      ~{if defined(name_tag) then ("--name_tag " +  '"' + name_tag + '"') else ""} \
      ~{if defined(missing_value) then ("--missing_value " +  '"' + missing_value + '"') else ""} \
      ~{true="--genes" false="" genes} \
      ~{if defined(parent_tag) then ("--parent_tag " +  '"' + parent_tag + '"') else ""} \
      ~{true="--no_order_check" false="" no_order_check} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    attributes_include_output: "[ATTRIBUTES [ATTRIBUTES ...]], --attributes [ATTRIBUTES [ATTRIBUTES ...]] attributes to include to the output BED file (default: None)"
    name_tag: "an attribute tag of a feature name (default: None)"
    missing_value: "the missing tag value (default: NA)"
    genes: "output a BED12 file of genes (default: False)"
    parent_tag: "an attribute tag of exon genes (default: Parent)"
    no_order_check: "do not check the order of GFF3 file records (default: False)"
    v: ""
    gff_file: "a GFF3 file"
    type: "type of features to be processed"
    output_file: "the output file in the BED format"
  }
}