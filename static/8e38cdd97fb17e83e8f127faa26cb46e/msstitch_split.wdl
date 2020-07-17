version 1.0

task MsstitchSplit {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    String? split_col
  }
  command <<<
    msstitch split \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(split_col) then ("--splitcol " +  '"' + split_col + '"') else ""}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    split_col: "Either a column number to split a PSM table on, or \"TD\", \"bioset\" for splitting on target/decoy or biological sample set columns (resulting from msstitch perco2psm or msstitch psmtable. First column is number 1."
  }
}