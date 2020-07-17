version 1.0

task MedpyZoomImage.py {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
    String dimension
    String enhancement
  }
  command <<<
    medpy_zoom_image.py \
      ~{source_volume} \
      ~{target_volume} \
      ~{dimension} \
      ~{enhancement} \
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
    dimension: "The dimension along which to zoom."
    enhancement: "How many slices to put between each original slice."
  }
}