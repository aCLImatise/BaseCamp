version 1.0

task RgttoolspyBedAddData {
  input {
    File? input_bed_file
    File? output_bed_file
    File? target_bed_file
    String? same_or_opposite
  }
  command <<<
    rgt_tools_py bed_add_data \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(target_bed_file) then ("-t " +  '"' + target_bed_file + '"') else ""} \
      ~{if defined(same_or_opposite) then ("-s " +  '"' + same_or_opposite + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    target_bed_file: "Target BED file"
    same_or_opposite: "same or opposite"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}