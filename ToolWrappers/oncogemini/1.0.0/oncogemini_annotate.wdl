version 1.0

task OncogeminiAnnotate {
  input {
    File? tabixed_bed_file
    File? names_bed_columns
    String? how_annotation_file
    String? columns_extract_information
    Float? what_data_types
    Int? operations_apply_values
    Boolean? region_only
  }
  command <<<
    oncogemini annotate \
      ~{if defined(tabixed_bed_file) then ("-f " +  '"' + tabixed_bed_file + '"') else ""} \
      ~{if defined(names_bed_columns) then ("-c " +  '"' + names_bed_columns + '"') else ""} \
      ~{if defined(how_annotation_file) then ("-a " +  '"' + how_annotation_file + '"') else ""} \
      ~{if defined(columns_extract_information) then ("-e " +  '"' + columns_extract_information + '"') else ""} \
      ~{if defined(what_data_types) then ("-t " +  '"' + what_data_types + '"') else ""} \
      ~{if defined(operations_apply_values) then ("-o " +  '"' + operations_apply_values + '"') else ""} \
      ~{if (region_only) then "--region-only" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    tabixed_bed_file: "The TABIX'ed BED file containing the annotations"
    names_bed_columns: "The name(s) of the BED column(s) to be added to the\\nvariant table.If the input file is a VCF, then this is\\nthe name of the info field to pull."
    how_annotation_file: "How should the annotation file be used? (def. extract)"
    columns_extract_information: "Column(s) to extract information from for list\\nannotations.If the input is VCF, then this defaults to\\nthe fields specified in `-c`."
    what_data_types: "What data type(s) should be used to represent the new\\nvalues in the database? Any of {integer, float, text}"
    operations_apply_values: "Operation(s) to apply to the extract column values in\\nthe event that a variant overlaps multiple annotations\\nin your annotation file (-f).Any of {sum, mean,\\nmedian, min, max, mode, list, uniq_list, first, last}"
    region_only: "If set, only region coordinates will be considered\\nwhen annotating variants.The default is to annotate\\nusing region coordinates as well as REF and ALT\\nvariant valuesThis option is only valid if annotation\\nis a VCF file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}