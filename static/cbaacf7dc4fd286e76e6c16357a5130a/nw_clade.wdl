version 1.0

task NwClade {
  input {
    Boolean? hm
    File filename_vertical_line
    String label
  }
  command <<<
    nw_clade \
      ~{filename_vertical_line} \
      ~{label} \
      ~{true="-hm" false="" hm}
  >>>
  parameter_meta {
    hm: ""
    filename_vertical_line: ""
    label: ""
  }
}