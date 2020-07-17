version 1.0

task MdCoords {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    md_coords \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}