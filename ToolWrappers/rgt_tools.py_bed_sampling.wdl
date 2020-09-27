version 1.0

task RgttoolspyBedSampling {
  input {
    File? input_bed_file
    File? output_bed_file
    Int? number_output_regions
  }
  command <<<
    rgt_tools_py bed_sampling \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(number_output_regions) then ("-s " +  '"' + number_output_regions + '"') else ""}
  >>>
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    number_output_regions: "Number of the output regions"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}