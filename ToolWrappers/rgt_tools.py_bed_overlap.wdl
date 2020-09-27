version 1.0

task RgttoolspyBedOverlap {
  input {
    Directory? input_bed_files
    File? output_text_file
  }
  command <<<
    rgt_tools_py bed_overlap \
      ~{if defined(input_bed_files) then ("-i " +  '"' + input_bed_files + '"') else ""} \
      ~{if defined(output_text_file) then ("-o " +  '"' + output_text_file + '"') else ""}
  >>>
  parameter_meta {
    input_bed_files: "Input BED files or directory"
    output_text_file: "Output text file"
  }
  output {
    File out_stdout = stdout()
    File out_output_text_file = "${in_output_text_file}"
  }
}