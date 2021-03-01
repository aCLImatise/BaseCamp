version 1.0

task Bedoverlap {
  input {
    File? name_output_file
    Boolean? about
    String bed_regions
    String bed_map_locations
  }
  command <<<
    bedoverlap \
      ~{bed_regions} \
      ~{bed_map_locations} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_output_file: "Name of output file (default: stdout)"
    about: "print about message"
    bed_regions: ""
    bed_map_locations: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}