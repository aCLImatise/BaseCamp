version 1.0

task ConvertZeroOneBased {
  input {
    Boolean? to_base
    Boolean? header
    String input_file
    String output_file
  }
  command <<<
    convert_zero_one_based \
      ~{input_file} \
      ~{output_file} \
      ~{true="--to-base" false="" to_base} \
      ~{true="--header" false="" header}
  >>>
  parameter_meta {
    to_base: "[zero|one]  Specify output file format: one-based or zero- based cordinate systems (default:one)"
    header: "/ --no-header     Specify whether header is present in INPUT_FILE"
    input_file: ""
    output_file: ""
  }
}