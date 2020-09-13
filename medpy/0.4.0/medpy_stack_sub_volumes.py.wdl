version 1.0

task MedpyStackSubVolumespy {
  input {
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? supplied_images_containing
    Boolean? stack_resversed_order
  }
  command <<<
    medpy_stack_sub_volumes_py \
      ~{if (set_flag_override) then "-f" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (supplied_images_containing) then "-z" else ""} \
      ~{if (stack_resversed_order) then "-r" else ""}
  >>>
  parameter_meta {
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    supplied_images_containing: "If supplied, all images containing only 1s are treated as empty image."
    stack_resversed_order: "Stack in resversed order as how the files are supplied."
  }
  output {
    File out_stdout = stdout()
  }
}