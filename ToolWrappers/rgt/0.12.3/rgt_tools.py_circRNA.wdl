version 1.0

task RgttoolspyCircRNA {
  input {
    File? input_chimeric_junction
    File? input_bed_file
    File? output_bed_file
    File? output_bed_file_circular
  }
  command <<<
    rgt_tools_py circRNA \
      ~{if defined(input_chimeric_junction) then ("-i " +  '"' + input_chimeric_junction + '"') else ""} \
      ~{if defined(input_bed_file) then ("-t " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(output_bed_file_circular) then ("-c " +  '"' + output_bed_file_circular + '"') else ""}
  >>>
  parameter_meta {
    input_chimeric_junction: "Input chimeric junction file from STAR"
    input_bed_file: "Input BED file of tcons"
    output_bed_file: "Output BED file"
    output_bed_file_circular: "Output BED file of circular RNA"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
    File out_output_bed_file_circular = "${in_output_bed_file_circular}"
  }
}