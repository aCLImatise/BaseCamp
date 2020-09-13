version 1.0

task MsstitchSplit {
  input {
    String? split_col
    File? input_file_format
    Directory? directory_to_output
    File? output_file
  }
  command <<<
    msstitch split \
      ~{if defined(split_col) then ("--splitcol " +  '"' + split_col + '"') else ""} \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    split_col: ""
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}