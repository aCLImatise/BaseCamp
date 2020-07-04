version 1.0

task MedpyJoinXdToXplus1d.py {
  input {
    String? voxel_spacing_newly
    String? position_where_put
    Boolean? ignore_images_datatypes
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String target_volume
    String inputs
  }
  command <<<
    medpy_join_xd_to_xplus1d.py \
      ~{target_volume} \
      ~{inputs} \
      ~{if defined(voxel_spacing_newly) then ("-s " +  '"' + voxel_spacing_newly + '"') else ""} \
      ~{if defined(position_where_put) then ("-p " +  '"' + position_where_put + '"') else ""} \
      ~{true="-i" false="" ignore_images_datatypes} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    voxel_spacing_newly: "The voxel spacing of the newly created dimension. Default is 1."
    position_where_put: "The position where to put the new dimension starting from 0. Standard behaviour is to place it in the first position."
    ignore_images_datatypes: "Ignore if the images datatypes differ."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    target_volume: "Target volume."
    inputs: "Source volumes of same shape and dtype."
  }
}