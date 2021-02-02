version 1.0

task Sqm {
  input {
    File? overwrite_output_file
    File? input_file
    File? output_file
  }
  command <<<
    sqm \
      ~{if (overwrite_output_file) then "-O" else ""} \
      ~{if defined(input_file) then ("-i " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    overwrite_output_file: "Overwrite output file if it exists"
    input_file: "Input file"
    output_file: "Output file"
  }
  output {
    File out_stdout = stdout()
    File out_overwrite_output_file = "${in_overwrite_output_file}"
    File out_output_file = "${in_output_file}"
  }
}