version 1.0

task MedpyReslice3dTo4dpy {
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
    medpy_reslice_3d_to_4d_py \
      ~{source_volume} \
      ~{target_volume} \
      ~{dimension} \
      ~{offset} \
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
    dimension: "The dimension in which to perform the cut (starting from 0)."
    offset: "The offset between the slices."
  }
  output {
    File out_stdout = stdout()
  }
}