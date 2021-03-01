version 1.0

task RgttoolspyThorMa {
  input {
    String? input_data_config
    Directory? thor
    Directory? output_directory
    Int? define_extension_size
    Int? size_define_size
    String? result
  }
  command <<<
    rgt_tools_py thor_ma \
      ~{result} \
      ~{if defined(input_data_config) then ("-i " +  '"' + input_data_config + '"') else ""} \
      ~{if defined(thor) then ("-thor " +  '"' + thor + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(define_extension_size) then ("-e " +  '"' + define_extension_size + '"') else ""} \
      ~{if defined(size_define_size) then ("-b " +  '"' + size_define_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_data_config: "Input data config."
    thor: "result  Output directory of THOR."
    output_directory: "Output directory"
    define_extension_size: "Define the extension size."
    size_define_size: "size        Define the bin size."
    result: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_thor = "${in_thor}"
    Directory out_output_directory = "${in_output_directory}"
  }
}