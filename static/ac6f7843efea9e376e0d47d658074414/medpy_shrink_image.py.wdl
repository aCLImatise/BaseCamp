version 1.0

task MedpyShrinkImagepy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
    String dimension
    String discard
  }
  command <<<
    medpy_shrink_image_py \
      ~{source_volume} \
      ~{target_volume} \
      ~{dimension} \
      ~{discard} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volume: "Target volume."
    dimension: "The dimension along which to discard the slices."
    discard: "How many slices to discard between each two slices which are kept."
  }
  output {
    File out_stdout = stdout()
  }
}