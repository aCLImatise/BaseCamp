version 1.0

task MedpyLabelFitToMask.py {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String image
    String mask
    String the_output_image
  }
  command <<<
    medpy_label_fit_to_mask.py \
      ~{image} \
      ~{mask} \
      ~{the_output_image} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    image: "The input label image."
    mask: "The mask image to which to fit the label images."
    the_output_image: "The output image."
  }
}