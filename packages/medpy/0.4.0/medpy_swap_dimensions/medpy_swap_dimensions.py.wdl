version 1.0

task MedpySwapDimensionspy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
    Int dimension_one
    Int dimension_two
  }
  command <<<
    medpy_swap_dimensions_py \
      ~{source_volume} \
      ~{target_volume} \
      ~{dimension_one} \
      ~{dimension_two} \
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
    dimension_one: "First dimension to swap (starting from 0)."
    dimension_two: "Second dimension to swap (starting from 0)."
  }
  output {
    File out_stdout = stdout()
  }
}