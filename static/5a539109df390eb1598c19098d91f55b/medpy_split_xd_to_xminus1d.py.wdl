version 1.0

task MedpySplitXdToXminus1dpy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volumes_include
    String dimension
  }
  command <<<
    medpy_split_xd_to_xminus1d_py \
      ~{source_volume} \
      ~{target_volumes_include} \
      ~{dimension} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volumes_include: "Target volumes. Has to include the sequence \\\"{}\\\" in the place\\nwhere the volume number should be placed."
    dimension: "The dimension along which to split (starting from 0)."
  }
  output {
    File out_stdout = stdout()
  }
}