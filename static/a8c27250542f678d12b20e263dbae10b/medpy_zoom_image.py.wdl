version 1.0

task MedpyZoomImagepy {
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
    medpy_zoom_image_py \
      ~{source_volume} \
      ~{target_volume} \
      ~{dimension} \
      ~{enhancement} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volume: "Target volume."
    dimension: "The dimension along which to zoom."
    enhancement: "How many slices to put between each original slice."
  }
  output {
    File out_stdout = stdout()
  }
}