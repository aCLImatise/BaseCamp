version 1.0

task MedpyExtractSubVolumeByExamplepy {
  input {
    Int? offset
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
    String image
    String the_resulting_subvolume
    String mask
  }
  command <<<
    medpy_extract_sub_volume_by_example_py \
      ~{image} \
      ~{the_resulting_subvolume} \
      ~{mask} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if (set_flag_override) then "-f" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    offset: "Set an offset by which the extracted sub-volume size should be increased in all directions."
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    image: "The input image."
    the_resulting_subvolume: "The resulting sub-volume."
    mask: "A mask image containing a single foreground object (non-zero)."
  }
  output {
    File out_stdout = stdout()
  }
}