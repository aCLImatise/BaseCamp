class: CommandLineTool
id: genomedata_erase_data.cwl
inputs:
- id: in_track_name
  doc: tracknames to erase
  type: string[]
  inputBinding:
    prefix: --trackname
- id: in_verbose
  doc: Print status updates and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genomedata-erase-data
