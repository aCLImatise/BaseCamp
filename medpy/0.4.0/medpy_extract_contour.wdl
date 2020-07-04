version 1.0

task MedpyExtractContour.py {
  input {
    String? width
    String? dimension
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
  }
  command <<<
    medpy_extract_contour.py \
      ~{source_volume} \
      ~{target_volume} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(dimension) then ("--dimension " +  '"' + dimension + '"') else ""} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    width: "Width of the contour."
    dimension: "Extract contours only along this dimension."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volume: "Target volume."
  }
}