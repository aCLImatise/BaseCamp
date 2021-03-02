version 1.0

task SeqmagickExtractids {
  input {
    File? output_file
    File? input_format
    Boolean? include_description
  }
  command <<<
    seqmagick extract_ids \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if (include_description) then "--include-description" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqmagick:0.8.4--py_1"
  }
  parameter_meta {
    output_file: "Destination file"
    input_format: "Input format for sequence file"
    include_description: "Include the sequence description in output [default:\\nFalse]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}