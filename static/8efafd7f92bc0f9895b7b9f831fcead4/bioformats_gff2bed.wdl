version 1.0

task BioformatsGff2bed {
  input {
    File? attributes_include_defaultnone
    String? name_tag
    String? missing_value
    File? genes
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
      ~{if (attributes_include_defaultnone) then "-a" else ""} \
      ~{if defined(name_tag) then ("--name_tag " +  '"' + name_tag + '"') else ""} \
      ~{if defined(missing_value) then ("--missing_value " +  '"' + missing_value + '"') else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if defined(parent_tag) then ("--parent_tag " +  '"' + parent_tag + '"') else ""} \
      ~{if (no_order_check) then "--no_order_check" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    attributes_include_defaultnone: "[ATTRIBUTES [ATTRIBUTES ...]], --attributes [ATTRIBUTES [ATTRIBUTES ...]]\\nattributes to include to the output BED file (default:\\nNone)"
    name_tag: "an attribute tag of a feature name (default: None)"
    missing_value: "the missing tag value (default: NA)"
    genes: "output a BED12 file of genes (default: False)"
    parent_tag: "an attribute tag of exon genes (default: Parent)"
    no_order_check: "do not check the order of GFF3 file records (default:\\nFalse)\\n"
    v: ""
    gff_file: "a GFF3 file"
    type: "type of features to be processed"
    output_file: "the output file in the BED format"
  }
  output {
    File out_stdout = stdout()
    File out_attributes_include_defaultnone = "${in_attributes_include_defaultnone}"
    File out_genes = "${in_genes}"
  }
}