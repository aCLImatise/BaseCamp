version 1.0

task ReadLinker {
  input {
    File? input_file_first
    File? input_file_end
    File? output_file
    String? minimum_overlapping_length
    String? maximum_number_errors
  }
  command <<<
    read-linker \
      ~{if defined(input_file_first) then ("-1 " +  '"' + input_file_first + '"') else ""} \
      ~{if defined(input_file_end) then ("-2 " +  '"' + input_file_end + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(minimum_overlapping_length) then ("-l " +  '"' + minimum_overlapping_length + '"') else ""} \
      ~{if defined(maximum_number_errors) then ("-e " +  '"' + maximum_number_errors + '"') else ""}
  >>>
  parameter_meta {
    input_file_first: "Input file, first end;"
    input_file_end: "Input file, second end;"
    output_file: "Output file;"
    minimum_overlapping_length: "Minimum overlapping length (default 10);"
    maximum_number_errors: "Maximum number of errors (mismatches, default 1);"
  }
}