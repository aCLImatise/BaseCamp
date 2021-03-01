version 1.0

task RgttoolspyBedAddScore {
  input {
    File? input_bed_file
    File? output_bed_file
    String? define_value_add
  }
  command <<<
    rgt_tools_py bed_add_score \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(define_value_add) then ("-v " +  '"' + define_value_add + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    define_value_add: "Define value to add"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}