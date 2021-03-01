version 1.0

task FlattenGTF {
  input {
    File? name_annotation_file
    File? name_output_file
    String? specify_feature_type
    String? specify_attribute_type
    Boolean? merging_overlapping_exons
  }
  command <<<
    flattenGTF \
      ~{if defined(name_annotation_file) then ("-a " +  '"' + name_annotation_file + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(specify_feature_type) then ("-t " +  '"' + specify_feature_type + '"') else ""} \
      ~{if defined(specify_attribute_type) then ("-g " +  '"' + specify_attribute_type + '"') else ""} \
      ~{if (merging_overlapping_exons) then "-C" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_annotation_file: "Name of an annotation file in GTF/GFF format."
    name_output_file: "Name of output file."
    specify_feature_type: "Specify feature type in a GTF annotation. 'exon' by default.\\nFeatures with the specified feature type are extracted from the\\nannotation for processing."
    specify_attribute_type: "Specify attribute type in GTF annotation. 'gene_id' by default.\\nThis attribute type is used to group features into meta-\\nfeatures."
    merging_overlapping_exons: "Merging overlapping exons into multiple non-overlapping exons but\\nall the edges are kept.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}