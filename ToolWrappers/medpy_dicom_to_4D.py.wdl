version 1.0

task MedpyDicomTo4Dpy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String split_dot
    String dimension_dot
    String source_directory
    String target_volume
    String dimension
    String offset
  }
  command <<<
    medpy_dicom_to_4D_py \
      ~{split_dot} \
      ~{dimension_dot} \
      ~{source_directory} \
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
    split_dot: "A typical use-case are DICOM images, which often come with the temporal and third spatial"
    dimension_dot: "Copyright (C) 2013 Oskar Maier"
    source_directory: "Source directory."
    target_volume: "Target volume."
    dimension: "The dimension in which to perform the cut (starting from 0)."
    offset: "How many consecutive slices belong together before a shift occurs. / The offset between the volumes."
  }
  output {
    File out_stdout = stdout()
  }
}