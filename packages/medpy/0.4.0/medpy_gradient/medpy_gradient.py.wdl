version 1.0

task MedpyGradientpy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
  }
  command <<<
    medpy_gradient_py \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
  }
  output {
    File out_stdout = stdout()
  }
}