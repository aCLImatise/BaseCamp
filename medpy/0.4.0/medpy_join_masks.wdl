version 1.0

task MedpyJoinMasks.py {
  input {
    String? operation
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String target_volume
    String inputs
  }
  command <<<
    medpy_join_masks.py \
      ~{target_volume} \
      ~{inputs} \
      ~{if defined(operation) then ("--operation " +  '"' + operation + '"') else ""} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    operation: "Combinatorial operation to conduct."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    target_volume: "Target volume."
    inputs: "Source volume(s)."
  }
}