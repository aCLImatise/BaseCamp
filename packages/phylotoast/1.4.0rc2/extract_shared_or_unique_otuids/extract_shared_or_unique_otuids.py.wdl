version 1.0

task ExtractSharedOrUniqueOtuidspy {
  input {
    File? prefix
    File? reverse
    String input_biom_fp
    String output_dir
    String mapping_file
    String category_column
  }
  command <<<
    extract_shared_or_unique_otuids_py \
      ~{input_biom_fp} \
      ~{output_dir} \
      ~{mapping_file} \
      ~{category_column} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Provide specific text to prepend the output file\\nnames. By default, the 'unique' will be added in front\\nof output filenames, for uniques calculations only."
    reverse: "Get shared OTUIDs among all unique combinations of\\ngroups and write out the results to path provided to\\nthis option.\\n"
    input_biom_fp: "BIOM format file path."
    output_dir: "Path to save category unique OTUIDs."
    mapping_file: "Mapping file with category information."
    category_column: "Column in mapping file specifying the\\ncategory/condition of all samples."
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    File out_reverse = "${in_reverse}"
  }
}