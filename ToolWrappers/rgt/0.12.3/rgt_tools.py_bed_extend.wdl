version 1.0

task RgttoolspyBedExtend {
  input {
    File? input_bed_file
    String? output_bed_name
    Boolean? only_zero
    Int? len
    Boolean? extend_center_directions
    Boolean? extend_left_ends
    Boolean? extend_right_ends
    Boolean? up
    Boolean? down
  }
  command <<<
    rgt_tools_py bed_extend \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_name) then ("-o " +  '"' + output_bed_name + '"') else ""} \
      ~{if (only_zero) then "--onlyzero" else ""} \
      ~{if defined(len) then ("-len " +  '"' + len + '"') else ""} \
      ~{if (extend_center_directions) then "-c" else ""} \
      ~{if (extend_left_ends) then "-l" else ""} \
      ~{if (extend_right_ends) then "-r" else ""} \
      ~{if (up) then "-up" else ""} \
      ~{if (down) then "-down" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_name: "Output BED name."
    only_zero: "Extend only the zero-length regions"
    len: "Define the length to extend."
    extend_center_directions: "Extend from the center to both directions."
    extend_left_ends: "Extend from the left ends."
    extend_right_ends: "Extend from the right ends."
    up: "Extend from the upstream ends."
    down: "Extend from the downstream ends."
  }
  output {
    File out_stdout = stdout()
  }
}