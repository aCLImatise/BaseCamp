version 1.0

task RgttoolspyTpx2bed {
  input {
    File? input_tpx_file
    File? output_bed_file
  }
  command <<<
    rgt_tools_py tpx2bed \
      ~{if defined(input_tpx_file) then ("-i " +  '"' + input_tpx_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_tpx_file: "Input TPX file"
    output_bed_file: "Output BED file"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}