class: CommandLineTool
id: mb_extract_sites.cwl
inputs:
- id: in_gff_file
  doc: ''
  type: File?
  inputBinding:
    prefix: --gff_file
- id: in_transition_from
  doc: ''
  type: string?
  inputBinding:
    prefix: --transition_from
- id: in_fast_a_file
  doc: output_file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mb-extract-sites
