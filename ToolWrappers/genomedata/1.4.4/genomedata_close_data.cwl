class: CommandLineTool
id: genomedata_close_data.cwl
inputs:
- id: in_verbose
  doc: Print status updates and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genomedata-close-data
