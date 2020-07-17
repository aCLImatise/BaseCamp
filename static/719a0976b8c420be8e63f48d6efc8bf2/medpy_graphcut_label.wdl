version 1.0

task MedpyGraphcutLabel.py {
  input {
    String? boundary
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
    String b_additional
    String region
    String markers
    String output_image_containing
  }
  command <<<
    medpy_graphcut_label.py \
      ~{b_additional} \
      ~{region} \
      ~{markers} \
      ~{output_image_containing} \
      ~{if defined(boundary) then ("--boundary " +  '"' + boundary + '"') else ""} \
      ~{true="-f" false="" set_flag_override} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information}
  >>>
  parameter_meta {
    boundary: "The boundary term to use. Note that difference of means (means) requires the original image, while stawiaski requires the gradient image of the original image to be passed to badditional."
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    b_additional: "The additional image required by the boundary term. See there for details."
    region: "The region image of the image to segment."
    markers: "Binary image containing the foreground (=1) and background (=2) markers."
    output_image_containing: "The output image containing the segmentation."
  }
}