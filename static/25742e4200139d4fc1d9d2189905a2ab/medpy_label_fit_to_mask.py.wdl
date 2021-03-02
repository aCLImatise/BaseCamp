version 1.0

task MedpyLabelFitToMaskpy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String image
    String mask
    String the_output_image
  }
  command <<<
    medpy_label_fit_to_mask_py \
      ~{image} \
      ~{mask} \
      ~{the_output_image} \
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
    image: "The input label image."
    mask: "The mask image to which to fit the label images."
    the_output_image: "The output image."
  }
  output {
    File out_stdout = stdout()
  }
}