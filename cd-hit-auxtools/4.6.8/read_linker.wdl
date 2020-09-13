version 1.0

task Readlinker {
  input {
    File? input_file_first_end
    File? input_file_second_end
    File? output_file
    Int? minimum_overlapping_length
    Int? maximum_number_errors
  }
  command <<<
    read_linker \
      ~{if defined(input_file_first_end) then ("-1 " +  '"' + input_file_first_end + '"') else ""} \
      ~{if defined(input_file_second_end) then ("-2 " +  '"' + input_file_second_end + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(minimum_overlapping_length) then ("-l " +  '"' + minimum_overlapping_length + '"') else ""} \
      ~{if defined(maximum_number_errors) then ("-e " +  '"' + maximum_number_errors + '"') else ""}
  >>>
  parameter_meta {
    input_file_first_end: "Input file, first end;"
    input_file_second_end: "Input file, second end;"
    output_file: "Output file;"
    minimum_overlapping_length: "Minimum overlapping length (default 10);"
    maximum_number_errors: "Maximum number of errors (mismatches, default 1);"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}