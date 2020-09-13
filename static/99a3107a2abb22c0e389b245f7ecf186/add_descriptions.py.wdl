version 1.0

task AddDescriptionspy {
  input {
    File? input_function_abundance
    File? output_function_abundance
    String? map_type
    File? custom_map_table
  }
  command <<<
    add_descriptions_py \
      ~{if defined(input_function_abundance) then ("--input " +  '"' + input_function_abundance + '"') else ""} \
      ~{if defined(output_function_abundance) then ("--output " +  '"' + output_function_abundance + '"') else ""} \
      ~{if defined(map_type) then ("--map_type " +  '"' + map_type + '"') else ""} \
      ~{if defined(custom_map_table) then ("--custom_map_table " +  '"' + custom_map_table + '"') else ""}
  >>>
  parameter_meta {
    input_function_abundance: "Input function abundance table."
    output_function_abundance: "Output function abundance table with added description\\ncolumn. If the extension \\\".gz\\\" is added the table will\\nautomatically be gzipped."
    map_type: "Specifies which default mapping table should be used.\\nUse the --custom_map_table option to input a non-\\ndefault mapping table."
    custom_map_table: "An input map table linking function ids to\\ndescriptions for each function."
  }
  output {
    File out_stdout = stdout()
  }
}