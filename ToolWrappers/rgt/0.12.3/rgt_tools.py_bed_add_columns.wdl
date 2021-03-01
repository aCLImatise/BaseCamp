version 1.0

task RgttoolspyBedAddColumns {
  input {
    File? input_bed_file
    File? output_bed_file
    File? ref
    File? field
  }
  command <<<
    rgt_tools_py bed_add_columns \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    ref: "Define file for referring the extra columns"
    field: "Which field of the reference file is compared for\\nnames.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}