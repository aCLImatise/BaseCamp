version 1.0

task RgttoolspyEncode {
  input {
    File? input_file_list
    Directory? output_directory
  }
  command <<<
    rgt_tools_py encode \
      ~{if defined(input_file_list) then ("-i " +  '"' + input_file_list + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_list: "Input file list downloaded from ENCODE"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}