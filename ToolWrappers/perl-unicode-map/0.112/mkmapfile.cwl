class: CommandLineTool
id: mkmapfile.cwl
inputs:
- id: in_mapfile_output_write
  doc: Mapfile output. Write created mapping to this file.
  type: File?
  inputBinding:
    prefix: -M
- id: in_force_write_mapfiles
  doc: force. Write new mapfiles even when they seem to be update.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_overwrite_existing_files
  doc: overwrite. Existing files will be overwritten.
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_style_textual_input
  doc: Style. Textual input mapping is of style 'unicode' or 'keld'
  type: string?
  inputBinding:
    prefix: -S
- id: in_update_mode_update
  doc: Update mode. Update mapfiles according to REGISTRY file
  type: boolean?
  inputBinding:
    prefix: -U
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mapfile_output_write
  doc: Mapfile output. Write created mapping to this file.
  type: File?
  outputBinding:
    glob: $(inputs.in_mapfile_output_write)
hints: []
cwlVersion: v1.1
baseCommand:
- mkmapfile
