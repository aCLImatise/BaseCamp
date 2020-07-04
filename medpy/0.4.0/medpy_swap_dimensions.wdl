version 1.0

task MedpySwapDimensions.py {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
    String dimension_one
    String dimension_two
  }
  command <<<
    medpy_swap_dimensions.py \
      ~{source_volume} \
      ~{target_volume} \
      ~{dimension_one} \
      ~{dimension_two} \
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
    dimension_one: "First dimension to swap (starting from 0)."
    dimension_two: "Second dimension to swap (starting from 0)."
  }
}