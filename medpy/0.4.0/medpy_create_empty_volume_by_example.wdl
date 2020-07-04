version 1.0

task MedpyCreateEmptyVolumeByExample.py {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String example
    String target_volume
  }
  command <<<
    medpy_create_empty_volume_by_example.py \
      ~{example} \
      ~{target_volume} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    example: "The example volume."
    target_volume: "Target volume."
  }
}