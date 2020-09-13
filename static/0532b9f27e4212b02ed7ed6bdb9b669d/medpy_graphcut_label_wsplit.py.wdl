version 1.0

task MedpyGraphcutLabelWsplitpy {
  input {
    String? boundary
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
    String gradient
    String region
    String markers
    String output_image_containing
  }
  command <<<
    medpy_graphcut_label_wsplit_py \
      ~{gradient} \
      ~{region} \
      ~{markers} \
      ~{output_image_containing} \
      ~{if defined(boundary) then ("--boundary " +  '"' + boundary + '"') else ""} \
      ~{if (set_flag_override) then "-f" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  parameter_meta {
    boundary: "Depending on the selected term, an additional"
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    gradient: "The gradient magnitude image of the image to segment."
    region: "The region image of the image to segment."
    markers: "Binary image containing the foreground (=1) and background (=2) markers."
    output_image_containing: "The output image containing the segmentation."
  }
  output {
    File out_stdout = stdout()
  }
}