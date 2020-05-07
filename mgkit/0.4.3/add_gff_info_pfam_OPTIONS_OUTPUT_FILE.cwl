class: CommandLineTool
id: add_gff_info_pfam_OPTIONS_OUTPUT_FILE.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- pfam
- OPTIONS
- OUTPUT_FILE
