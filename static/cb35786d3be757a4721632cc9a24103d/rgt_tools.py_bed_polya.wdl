version 1.0

task RgttoolspyBedPolya {
  input {
    File? input_bed_file
    File? input_bam_file
    File? output_file
  }
  command <<<
    rgt_tools_py bed_polya \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(input_bam_file) then ("-b " +  '"' + input_bam_file + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    input_bam_file: "Input BAM file"
    output_file: "Output file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}