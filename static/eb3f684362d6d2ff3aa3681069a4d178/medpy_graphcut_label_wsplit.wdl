version 1.0

task MedpyGraphcutLabelWsplit.py {
  input {
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
    String gradient
    String region
    String markers
    String output_image_containing
  }
  command <<<
    medpy_graphcut_label_wsplit.py \
      ~{gradient} \
      ~{region} \
      ~{markers} \
      ~{output_image_containing} \
      ~{true="-f" false="" set_flag_override} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information}
  >>>
  parameter_meta {
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    gradient: "The gradient magnitude image of the image to segment."
    region: "The region image of the image to segment."
    markers: "Binary image containing the foreground (=1) and background (=2) markers."
    output_image_containing: "The output image containing the segmentation."
  }
}