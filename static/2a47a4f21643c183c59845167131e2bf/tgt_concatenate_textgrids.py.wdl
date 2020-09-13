version 1.0

task Tgtconcatenatetextgridspy {
  input {
    Array[String] input_files
    File? output_files
    File? encoding
    String? type
    Boolean? absolute_time
  }
  command <<<
    tgt_concatenate_textgrids_py \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(output_files) then ("--output-files " +  '"' + output_files + '"') else ""} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (absolute_time) then "--absolute-time" else ""}
  >>>
  parameter_meta {
    input_files: "Space-separated list of paths to TextGrid files in the\\norder they should be concatenated."
    output_files: "Path to the resulting file."
    encoding: "File encoding (defaults to UTF-8)."
    type: "TextGrid format: short, long (defaults to short)"
    absolute_time: "Interpret start and end times of annotations as\\nabsolute.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_files = "${in_output_files}"
  }
}