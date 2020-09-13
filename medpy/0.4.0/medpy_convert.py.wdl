version 1.0

task MedpyConvertpy {
  input {
    Boolean? instead_copying_data
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
  }
  command <<<
    medpy_convert_py \
      ~{if (instead_copying_data) then "-e" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  parameter_meta {
    instead_copying_data: "Instead of copying the voxel data, create an empty copy\\nconserving all meta-data if possible."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
  }
  output {
    File out_stdout = stdout()
  }
}