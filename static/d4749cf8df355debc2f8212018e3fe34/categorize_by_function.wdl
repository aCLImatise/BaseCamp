version 1.0

task CategorizeByFunction.py {
  input {
    String? input_fp
    String? output_fp
    String? metadata_category
    String? level
  }
  command <<<
    categorize_by_function.py \
      ~{if defined(input_fp) then ("--input_fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(metadata_category) then ("--metadata_category " +  '"' + metadata_category + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""}
  >>>
  parameter_meta {
    input_fp: "the predicted metagenome table [REQUIRED]"
    output_fp: "the resulting table [REQUIRED]"
    metadata_category: "the metadata category that describes the hierarchy (e.g. KEGG_Pathways, COG_Category, etc.). Note: RFAM predictions can not be collapsed because there are no categories to group them into. [REQUIRED]"
    level: "the level in the hierarchy to collapse to. A value of 0 is not allowed, a value of 1 is the highest level, and any higher value nears the leaves of the hierarchy. For instance, if the hierarchy contains 4 levels, specifying 3 would collapse at one level above being fully specified. [REQUIRED]"
  }
}