version 1.0

task MedpyGraphcutLabelWRegionalpy {
  input {
    String? boundary
    String? regional
    String? r_additional
    String? alpha
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
    String b_additional
    String region
    String markers
    String output_image_containing
  }
  command <<<
    medpy_graphcut_label_w_regional_py \
      ~{b_additional} \
      ~{region} \
      ~{markers} \
      ~{output_image_containing} \
      ~{if defined(boundary) then ("--boundary " +  '"' + boundary + '"') else ""} \
      ~{if defined(regional) then ("--regional " +  '"' + regional + '"') else ""} \
      ~{if defined(r_additional) then ("--radditional " +  '"' + r_additional + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if (set_flag_override) then "-f" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    boundary: "The boundary term to use. Note that difference of means (means) requires the original image, while stawiaski requires the gradient image of the original image to be passed to badditional."
    regional: "The regional term to use. Note that the atlas requires to provide an atlas image."
    r_additional: "The additional image required by the regional term. See there for details."
    alpha: "The weight of the regional term compared to the boundary term."
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    b_additional: "The additional image required by the boundary term. See there for details."
    region: "The region image of the image to segment."
    markers: "Binary image containing the foreground (=1) and background (=2) markers."
    output_image_containing: "The output image containing the segmentation."
  }
  output {
    File out_stdout = stdout()
  }
}