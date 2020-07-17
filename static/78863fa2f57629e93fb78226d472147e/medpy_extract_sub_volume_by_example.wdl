version 1.0

task MedpyExtractSubVolumeByExample.py {
  input {
    String? offset
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
    String image
    String the_resulting_subvolume
    String mask
  }
  command <<<
    medpy_extract_sub_volume_by_example.py \
      ~{image} \
      ~{the_resulting_subvolume} \
      ~{mask} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{true="-f" false="" set_flag_override} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information}
  >>>
  parameter_meta {
    offset: "Set an offset by which the extracted sub-volume size should be increased in all directions."
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    image: "The input image."
    the_resulting_subvolume: "The resulting sub-volume."
    mask: "A mask image containing a single foreground object (non-zero)."
  }
}