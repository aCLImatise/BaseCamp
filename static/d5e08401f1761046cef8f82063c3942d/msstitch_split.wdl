version 1.0

task MsstitchSplit {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    Int? split_col
  }
  command <<<
    msstitch split \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(split_col) then ("--splitcol " +  '"' + split_col + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.5--py_0"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    split_col: "Either a column number to split a PSM table on, or\\n\\\"TD\\\", \\\"bioset\\\" for splitting on target/decoy or\\nbiological sample set columns (resulting from msstitch\\nperco2psm or msstitch psmtable. First column is number\\n1.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}