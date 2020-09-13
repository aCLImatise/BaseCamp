version 1.0

task Mkmapfile {
  input {
    File? mapfile_output_write
    Boolean? force_write_mapfiles
    Boolean? overwrite_files_overwritten
    String? style_textual_input
    Boolean? update_mode_update
  }
  command <<<
    mkmapfile \
      ~{if defined(mapfile_output_write) then ("-M " +  '"' + mapfile_output_write + '"') else ""} \
      ~{if (force_write_mapfiles) then "-f" else ""} \
      ~{if (overwrite_files_overwritten) then "-o" else ""} \
      ~{if defined(style_textual_input) then ("-S " +  '"' + style_textual_input + '"') else ""} \
      ~{if (update_mode_update) then "-U" else ""}
  >>>
  parameter_meta {
    mapfile_output_write: "Mapfile output. Write created mapping to this file."
    force_write_mapfiles: "force. Write new mapfiles even when they seem to be update."
    overwrite_files_overwritten: "overwrite. Existing files will be overwritten."
    style_textual_input: "Style. Textual input mapping is of style 'unicode' or 'keld'"
    update_mode_update: "Update mode. Update mapfiles according to REGISTRY file"
  }
  output {
    File out_stdout = stdout()
    File out_mapfile_output_write = "${in_mapfile_output_write}"
  }
}