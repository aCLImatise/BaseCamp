version 1.0

task MedpySetPixelSpacingpy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
  }
  command <<<
    medpy_set_pixel_spacing_py \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
  }
  output {
    File out_stdout = stdout()
  }
}