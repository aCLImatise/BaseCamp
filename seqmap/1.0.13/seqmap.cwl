class: CommandLineTool
id: seqmap.cwl
inputs:
- id: number_of_mismatches
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: probe_fast_a_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: transcript_fast_a_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmap
