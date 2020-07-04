version 1.0

task MedpyReslice3dTo4d.py {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
    String dimension
    String offset
  }
  command <<<
    medpy_reslice_3d_to_4d.py \
      ~{source_volume} \
      ~{target_volume} \
      ~{dimension} \
      ~{offset} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volume: "Target volume."
    dimension: "The dimension in which to perform the cut (starting from 0)."
    offset: "The offset between the slices."
  }
}