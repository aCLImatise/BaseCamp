version 1.0

task MedpyJoinMaskspy {
  input {
    String? operation
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String target_volume
    String inputs
  }
  command <<<
    medpy_join_masks_py \
      ~{target_volume} \
      ~{inputs} \
      ~{if defined(operation) then ("--operation " +  '"' + operation + '"') else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    operation: "Combinatorial operation to conduct."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    target_volume: "Target volume."
    inputs: "Source volume(s)."
  }
  output {
    File out_stdout = stdout()
  }
}