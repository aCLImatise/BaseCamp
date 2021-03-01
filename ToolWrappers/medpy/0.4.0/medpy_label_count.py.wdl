version 1.0

task MedpyLabelCountpy {
  input {
    Boolean? display_more_information
    Boolean? display_debug_information
    String images
  }
  command <<<
    medpy_label_count_py \
      ~{images} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    images: "One or more label images."
  }
  output {
    File out_stdout = stdout()
  }
}