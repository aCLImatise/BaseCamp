version 1.0

task SeqmagickExtractIds {
  input {
    String? output_file
    String? input_format
    Boolean? include_description
    String sequence_file
  }
  command <<<
    seqmagick extract-ids \
      ~{sequence_file} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{true="--include-description" false="" include_description}
  >>>
  parameter_meta {
    output_file: "Destination file"
    input_format: "Input format for sequence file"
    include_description: "Include the sequence description in output [default: False]"
    sequence_file: "Sequence file"
  }
}