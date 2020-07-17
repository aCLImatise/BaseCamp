version 1.0

task Bedoverlap {
  input {
    Boolean? name_output_file
    Boolean? about
    String bed_regions
    String bed_map_locations
  }
  command <<<
    bedoverlap \
      ~{bed_regions} \
      ~{bed_map_locations} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    about: "print about message "
    bed_regions: ""
    bed_map_locations: ""
  }
}