version 1.0

task RgttoolspyBedMerge {
  input {
    File? input_bed_file
    File? output_bed_file
    Boolean? strand_specific
    Boolean? bed_format
  }
  command <<<
    rgt_tools_py bed_merge \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if (strand_specific) then "-s" else ""} \
      ~{if (bed_format) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    strand_specific: "Strand specific"
    bed_format: "BED12 format"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}