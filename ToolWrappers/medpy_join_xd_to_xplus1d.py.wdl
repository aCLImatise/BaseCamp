version 1.0

task MedpyJoinXdToXplus1dpy {
  input {
    Int? voxel_spacing_newly
    Int? position_where_put
    Boolean? ignore_datatypes_differ
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String target_volume
    String inputs
  }
  command <<<
    medpy_join_xd_to_xplus1d_py \
      ~{target_volume} \
      ~{inputs} \
      ~{if defined(voxel_spacing_newly) then ("-s " +  '"' + voxel_spacing_newly + '"') else ""} \
      ~{if defined(position_where_put) then ("-p " +  '"' + position_where_put + '"') else ""} \
      ~{if (ignore_datatypes_differ) then "-i" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  parameter_meta {
    voxel_spacing_newly: "The voxel spacing of the newly created dimension. Default is 1."
    position_where_put: "The position where to put the new dimension starting from 0. Standard behaviour is to place it in the first position."
    ignore_datatypes_differ: "Ignore if the images datatypes differ."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    target_volume: "Target volume."
    inputs: "Source volumes of same shape and dtype."
  }
  output {
    File out_stdout = stdout()
  }
}