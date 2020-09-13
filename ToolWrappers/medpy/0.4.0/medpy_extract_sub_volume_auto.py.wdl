version 1.0

task MedpyExtractSubVolumeAutopy {
  input {
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
    String image
    String output_volumes_include
    String dimension
    String maxsize
  }
  command <<<
    medpy_extract_sub_volume_auto_py \
      ~{image} \
      ~{output_volumes_include} \
      ~{dimension} \
      ~{maxsize} \
      ~{if (set_flag_override) then "-f" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  parameter_meta {
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    image: "An image of arbitrary dimensions that should be split."
    output_volumes_include: "Output volumes. Has to include the sequence \\\"{}\\\" in the place where the volume number should be placed."
    dimension: "The dimension in which direction to split (starting from 0:x)."
    maxsize: "The produced volumes will always be smaller than this size (in terms of slices in the cut-dimension)."
  }
  output {
    File out_stdout = stdout()
  }
}