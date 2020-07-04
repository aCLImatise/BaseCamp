version 1.0

task Vcfhdr2json {
  input {
    String? input_file
    String? output_file
  }
  command <<<
    vcfhdr2json \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    input_file: "The input files"
    output_file: "The output file name."
  }
}