version 1.0

task Scramble {
  input {
    File? convert_using_filegzi
    File? output_bam_index
    String? mode_fast_normal
    String? input_file
    String? output_file
  }
  command <<<
    scramble \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(convert_using_filegzi) then ("-g " +  '"' + convert_using_filegzi + '"') else ""} \
      ~{if defined(output_bam_index) then ("-G " +  '"' + output_bam_index + '"') else ""} \
      ~{if defined(mode_fast_normal) then ("-X " +  '"' + mode_fast_normal + '"') else ""}
  >>>
  parameter_meta {
    convert_using_filegzi: "Convert to Bam using index (file.gzi)"
    output_bam_index: "Output Bam index when bam input(file.gzi)"
    mode_fast_normal: "[Cram] Mode is fast, normal, small or archive."
    input_file: ""
    output_file: ""
  }
}