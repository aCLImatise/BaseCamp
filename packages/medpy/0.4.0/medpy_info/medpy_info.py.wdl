version 1.0

task MedpyInfopy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    String the_image_analyse
  }
  command <<<
    medpy_info_py \
      ~{the_image_analyse} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    the_image_analyse: "The image to analyse."
  }
  output {
    File out_stdout = stdout()
  }
}