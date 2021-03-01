class: CommandLineTool
id: rsem_extract_reference_transcripts.cwl
inputs:
- id: in_refname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_quiet
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gt_ff
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_has_mapping_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_mapping_file
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_chromosome_file_one
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: in_chromosome_file_two
  doc: ''
  type: long?
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsem-extract-reference-transcripts
