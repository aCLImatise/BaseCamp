version 1.0

task ChBox {
  input {
    Boolean? original_coordinate_file
    File? output_coordinate_file
    Boolean? al
    Boolean? bt
    Boolean? gm
    Boolean? x_dimension_box
    Boolean? y_dimension_box
    Boolean? z_dimension_box
  }
  command <<<
    ChBox \
      ~{if (original_coordinate_file) then "-c" else ""} \
      ~{if (output_coordinate_file) then "-o" else ""} \
      ~{if (al) then "-al" else ""} \
      ~{if (bt) then "-bt" else ""} \
      ~{if (gm) then "-gm" else ""} \
      ~{if (x_dimension_box) then "-X" else ""} \
      ~{if (y_dimension_box) then "-Y" else ""} \
      ~{if (z_dimension_box) then "-Z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    original_coordinate_file: ": the original coordinate file (.RST format, coordinates only)"
    output_coordinate_file: ": the output coordinate file (.RST format)"
    al: ": box alpha angle"
    bt: ": box beta angle"
    gm: ": box gamma angle"
    x_dimension_box: ": X dimension of the box"
    y_dimension_box: ": Y dimension of the box"
    z_dimension_box: ": Z dimension of the box"
  }
  output {
    File out_stdout = stdout()
    File out_output_coordinate_file = "${in_output_coordinate_file}"
  }
}