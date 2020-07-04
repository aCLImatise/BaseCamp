version 1.0

task MedpySplitXdToXminus1d.py {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volumes_include
    String dimension
  }
  command <<<
    medpy_split_xd_to_xminus1d.py \
      ~{source_volume} \
      ~{target_volumes_include} \
      ~{dimension} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volumes_include: "Target volumes. Has to include the sequence \"{}\" in the place where the volume number should be placed."
    dimension: "The dimension along which to split (starting from 0)."
  }
}