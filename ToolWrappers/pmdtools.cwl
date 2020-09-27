class: CommandLineTool
id: pmdtools.cwl
inputs:
- id: in_sam_formatted_data_with_md_field_present_from_stdin
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pmdtools
