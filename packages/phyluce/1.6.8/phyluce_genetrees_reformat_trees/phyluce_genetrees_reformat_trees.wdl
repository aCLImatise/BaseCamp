version 1.0

task PhyluceGenetreesReformatTrees {
  input {
    Directory? input_trees_directory
    Directory? output_trees_directory
    String? input_format
    String? output_format
    String? do_not_preserve_spaces
  }
  command <<<
    phyluce_genetrees_reformat_trees \
      ~{if defined(input_trees_directory) then ("--input " +  '"' + input_trees_directory + '"') else ""} \
      ~{if defined(output_trees_directory) then ("--output " +  '"' + output_trees_directory + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(do_not_preserve_spaces) then ("--do-not-preserve-spaces " +  '"' + do_not_preserve_spaces + '"') else ""}
  >>>
  parameter_meta {
    input_trees_directory: "The input trees directory"
    output_trees_directory: "The output trees directory"
    input_format: "The tree file format"
    output_format: "The tree file format"
    do_not_preserve_spaces: "Do not retain spaces in output names\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_trees_directory = "${in_output_trees_directory}"
  }
}