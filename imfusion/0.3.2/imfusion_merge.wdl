version 1.0

task ImfusionMerge {
  input {
    Array[String] sample_dirs
    String? output_path_merged_insertion
    Array[String] names
    String? output_expression
  }
  command <<<
    imfusion-merge \
      ~{if defined(sample_dirs) then ("--sample_dirs " +  '"' + sample_dirs + '"') else ""} \
      ~{if defined(output_path_merged_insertion) then ("--output " +  '"' + output_path_merged_insertion + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(output_expression) then ("--output_expression " +  '"' + output_expression + '"') else ""}
  >>>
  parameter_meta {
    sample_dirs: "Path to sample directories."
    output_path_merged_insertion: "Output path for merged insertion file."
    names: "Alternative sample names to use for samples in merged dataset."
    output_expression: "Output path for merged expression file."
  }
}