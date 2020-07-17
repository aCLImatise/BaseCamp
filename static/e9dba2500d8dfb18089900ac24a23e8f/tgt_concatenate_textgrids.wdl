version 1.0

task TgtConcatenateTextgrids.py {
  input {
    Array[String] input_files
    String? output_files
    String? encoding
    String? type
    Boolean? absolute_time
  }
  command <<<
    tgt-concatenate-textgrids.py \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(output_files) then ("--output-files " +  '"' + output_files + '"') else ""} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--absolute-time" false="" absolute_time}
  >>>
  parameter_meta {
    input_files: "Space-separated list of paths to TextGrid files in the order they should be concatenated."
    output_files: "Path to the resulting file."
    encoding: "File encoding (defaults to UTF-8)."
    type: "TextGrid format: short, long (defaults to short)"
    absolute_time: "Interpret start and end times of annotations as absolute."
  }
}