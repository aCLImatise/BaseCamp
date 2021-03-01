version 1.0

task RgttoolspyBedToGtf {
  input {
    File? input_bed_file
    File? output_gtf_file
  }
  command <<<
    rgt_tools_py bed_to_gtf \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_gtf_file) then ("-o " +  '"' + output_gtf_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_gtf_file: "Output GTF file"
  }
  output {
    File out_stdout = stdout()
    File out_output_gtf_file = "${in_output_gtf_file}"
  }
}