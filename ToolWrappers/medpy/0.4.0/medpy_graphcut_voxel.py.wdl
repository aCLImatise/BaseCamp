version 1.0

task MedpyGraphcutVoxelpy {
  input {
    String? boundary
    Boolean? set_flag_take
    Boolean? set_flag_override
    Boolean? display_more_information
    Boolean? display_debug_information
  }
  command <<<
    medpy_graphcut_voxel_py \
      ~{if defined(boundary) then ("--boundary " +  '"' + boundary + '"') else ""} \
      ~{if (set_flag_take) then "-s" else ""} \
      ~{if (set_flag_override) then "-f" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""}
  >>>
  parameter_meta {
    boundary: "Depending on the selected term, an additional"
    set_flag_take: "Set this flag to take the pixel spacing of the image into account. The spacing data will be extracted from the baddtional image."
    set_flag_override: "Set this flag to silently override files that exist."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
  }
  output {
    File out_stdout = stdout()
  }
}