class: CommandLineTool
id: fdnainvar_alignments.cwl
inputs:
- id: in_weights
  doc: properties Phylip weights file (optional)
  type: boolean?
  inputBinding:
    prefix: -weights
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fdnainvar
- alignments
