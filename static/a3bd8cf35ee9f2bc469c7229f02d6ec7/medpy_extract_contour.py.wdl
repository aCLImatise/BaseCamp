version 1.0

task MedpyExtractContourpy {
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
    medpy_extract_contour_py \
      ~{source_volume} \
      ~{target_volume} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(dimension) then ("--dimension " +  '"' + dimension + '"') else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    width: "Width of the contour."
    dimension: "Extract contours only along this dimension."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volume: "Target volume."
  }
  output {
    File out_stdout = stdout()
  }
}