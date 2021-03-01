version 1.0

task MedpyCreateEmptyVolumeByExamplepy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String example
    String target_volume
  }
  command <<<
    medpy_create_empty_volume_by_example_py \
      ~{example} \
      ~{target_volume} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    example: "The example volume."
    target_volume: "Target volume."
  }
  output {
    File out_stdout = stdout()
  }
}