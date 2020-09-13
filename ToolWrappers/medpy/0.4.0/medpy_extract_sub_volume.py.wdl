version 1.0

task MedpyExtractSubVolumepy {
  input {
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
  }
  command <<<
    medpy_extract_sub_volume_py \
      ~{if (set_flag_override) then "-f" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  parameter_meta {
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
  }
  output {
    File out_stdout = stdout()
  }
}