version 1.0

task RgtTools.pyEncode {
  input {
    String? input_file_list
    String? output_directory
  }
  command <<<
    rgt-tools.py encode \
      ~{if defined(input_file_list) then ("-i " +  '"' + input_file_list + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""}
  >>>
  parameter_meta {
    input_file_list: "Input file list downloaded from ENCODE"
    output_directory: "Output directory"
  }
}