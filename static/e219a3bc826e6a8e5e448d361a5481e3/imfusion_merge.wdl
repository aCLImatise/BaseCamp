version 1.0

task Imfusionmerge {
  input {
    Array[String] sample_dirs
    File? output_path_merged_insertion
    Array[String] names
    File? output_expression
  }
  command <<<
    imfusion_merge \
      ~{if defined(sample_dirs) then ("--sample_dirs " +  '"' + sample_dirs + '"') else ""} \
      ~{if defined(output_path_merged_insertion) then ("--output " +  '"' + output_path_merged_insertion + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(output_expression) then ("--output_expression " +  '"' + output_expression + '"') else ""}
  >>>
  parameter_meta {
    sample_dirs: "Path to sample directories."
    output_path_merged_insertion: "Output path for merged insertion file."
    names: "Alternative sample names to use for samples in merged\\ndataset."
    output_expression: "Output path for merged expression file.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_path_merged_insertion = "${in_output_path_merged_insertion}"
    File out_output_expression = "${in_output_expression}"
  }
}