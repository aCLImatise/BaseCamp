version 1.0

task MedpyInfo.py {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    String the_image_analyse
  }
  command <<<
    medpy_info.py \
      ~{the_image_analyse} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information}
  >>>
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    the_image_analyse: "The image to analyse."
  }
}