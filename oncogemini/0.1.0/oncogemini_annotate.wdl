version 1.0

task OncogeminiAnnotate {
  input {
    String? tabixed_bed_file
    String? names_bed_columns
    String? how_should_annotation
    String? columns_extract_information
    String? data_types_should
    String? operations_apply_extract
    Boolean? region_only
    String db
  }
  command <<<
    oncogemini annotate \
      ~{db} \
      ~{if defined(tabixed_bed_file) then ("-f " +  '"' + tabixed_bed_file + '"') else ""} \
      ~{if defined(names_bed_columns) then ("-c " +  '"' + names_bed_columns + '"') else ""} \
      ~{if defined(how_should_annotation) then ("-a " +  '"' + how_should_annotation + '"') else ""} \
      ~{if defined(columns_extract_information) then ("-e " +  '"' + columns_extract_information + '"') else ""} \
      ~{if defined(data_types_should) then ("-t " +  '"' + data_types_should + '"') else ""} \
      ~{if defined(operations_apply_extract) then ("-o " +  '"' + operations_apply_extract + '"') else ""} \
      ~{true="--region-only" false="" region_only}
  >>>
  parameter_meta {
    tabixed_bed_file: "The TABIX'ed BED file containing the annotations"
    names_bed_columns: "The name(s) of the BED column(s) to be added to the variant table.If the input file is a VCF, then this is the name of the info field to pull."
    how_should_annotation: "How should the annotation file be used? (def. extract)"
    columns_extract_information: "Column(s) to extract information from for list annotations.If the input is VCF, then this defaults to the fields specified in `-c`."
    data_types_should: "What data type(s) should be used to represent the new values in the database? Any of {integer, float, text}"
    operations_apply_extract: "Operation(s) to apply to the extract column values in the event that a variant overlaps multiple annotations in your annotation file (-f).Any of {sum, mean, median, min, max, mode, list, uniq_list, first, last}"
    region_only: "If set, only region coordinates will be considered when annotating variants.The default is to annotate using region coordinates as well as REF and ALT variant valuesThis option is only valid if annotation is a VCF file"
    db: "The name of the database to be updated."
  }
}